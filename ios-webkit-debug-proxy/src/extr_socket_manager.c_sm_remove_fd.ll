; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_socket_manager.c_sm_remove_fd.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_socket_manager.c_sm_remove_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, i32, i8*, i32)*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_9__* }

@SM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"ss.remove%s_fd(%d)\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"_server\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sm_remove_fd(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__**, align 8
  %11 = alloca %struct.TYPE_9__**, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @FD_ISSET(i32 %16, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @SM_ERROR, align 4
  store i32 %23, i32* %3, align 4
  br label %172

24:                                               ; preds = %2
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 10
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @HT_KEY(i32 %28)
  %30 = call i8* @ht_put(i32 %27, i32 %29, i32* null)
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 9
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @HT_KEY(i32 %34)
  %36 = call i8* @ht_put(i32 %33, i32 %35, i32* null)
  store i8* %36, i8** %7, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @FD_ISSET(i32 %37, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @sm_on_debug(%struct.TYPE_8__* %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %46, i32 %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32 (%struct.TYPE_8__*, i32, i8*, i32)*, i32 (%struct.TYPE_8__*, i32, i8*, i32)** %50, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i8*, i8** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 %51(%struct.TYPE_8__* %52, i32 %53, i8* %54, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @close(i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @FD_CLR(i32 %59, i32 %62)
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %24
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @FD_CLR(i32 %67, i32 %70)
  br label %72

72:                                               ; preds = %66, %24
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @FD_CLR(i32 %73, i32 %76)
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @FD_CLR(i32 %78, i32 %81)
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @FD_CLR(i32 %83, i32 %86)
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @FD_CLR(i32 %88, i32 %91)
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @FD_CLR(i32 %93, i32 %96)
  %98 = load i32, i32* %5, align 4
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %98, %101
  br i1 %102, label %103, label %127

103:                                              ; preds = %72
  br label %104

104:                                              ; preds = %121, %103
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp sge i32 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %104
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @FD_ISSET(i32 %112, i32 %115)
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  br label %119

119:                                              ; preds = %109, %104
  %120 = phi i1 [ false, %104 ], [ %118, %109 ]
  br i1 %120, label %121, label %126

121:                                              ; preds = %119
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %123, align 4
  br label %104

126:                                              ; preds = %119
  br label %127

127:                                              ; preds = %126, %72
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @ht_size(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %170

133:                                              ; preds = %127
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @ht_values(i32 %136)
  %138 = inttoptr i64 %137 to %struct.TYPE_9__**
  store %struct.TYPE_9__** %138, %struct.TYPE_9__*** %10, align 8
  %139 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %10, align 8
  store %struct.TYPE_9__** %139, %struct.TYPE_9__*** %11, align 8
  br label %140

140:                                              ; preds = %164, %133
  %141 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %11, align 8
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %141, align 8
  %143 = icmp ne %struct.TYPE_9__* %142, null
  br i1 %143, label %144, label %167

144:                                              ; preds = %140
  %145 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %11, align 8
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %145, align 8
  store %struct.TYPE_9__* %146, %struct.TYPE_9__** %12, align 8
  br label %147

147:                                              ; preds = %159, %144
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %149 = icmp ne %struct.TYPE_9__* %148, null
  br i1 %149, label %150, label %163

150:                                              ; preds = %147
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %5, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %150
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  store i32 0, i32* %158, align 8
  br label %159

159:                                              ; preds = %156, %150
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %161, align 8
  store %struct.TYPE_9__* %162, %struct.TYPE_9__** %12, align 8
  br label %147

163:                                              ; preds = %147
  br label %164

164:                                              ; preds = %163
  %165 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %165, i32 1
  store %struct.TYPE_9__** %166, %struct.TYPE_9__*** %11, align 8
  br label %140

167:                                              ; preds = %140
  %168 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %10, align 8
  %169 = call i32 @free(%struct.TYPE_9__** %168)
  br label %170

170:                                              ; preds = %167, %127
  %171 = load i32, i32* %9, align 4
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %170, %22
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32 @FD_ISSET(i32, i32) #1

declare dso_local i8* @ht_put(i32, i32, i32*) #1

declare dso_local i32 @HT_KEY(i32) #1

declare dso_local i32 @sm_on_debug(%struct.TYPE_8__*, i8*, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @FD_CLR(i32, i32) #1

declare dso_local i64 @ht_size(i32) #1

declare dso_local i64 @ht_values(i32) #1

declare dso_local i32 @free(%struct.TYPE_9__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
