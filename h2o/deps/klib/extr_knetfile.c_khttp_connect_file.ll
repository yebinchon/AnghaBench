; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_knetfile.c_khttp_connect_file.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_knetfile.c_khttp_connect_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8*, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"GET %s HTTP/1.0\0D\0AHost: %s\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Range: bytes=%lld-\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [57 x i8] c"[khttp_connect_file] fail to open file (HTTP code: %d).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @khttp_connect_file(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @netclose(i32 %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @socket_connect(i32 %22, i32 %25)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = call i64 @calloc(i32 65536, i32 1)
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 (i8*, i8*, ...) @sprintf(i8* %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %37, i8* %40)
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %5, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = call i64 (i8*, i8*, ...) @sprintf(i8* %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %52)
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %5, align 4
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = call i64 (i8*, i8*, ...) @sprintf(i8* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %5, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @netwrite(i32 %69, i8* %70, i32 %71)
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %104, %19
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = call i64 @netread(i32 %76, i8* %80, i32 1)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %107

83:                                               ; preds = %73
  %84 = load i8*, i8** %6, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 10
  br i1 %90, label %91, label %104

91:                                               ; preds = %83
  %92 = load i32, i32* %5, align 4
  %93 = icmp sge i32 %92, 3
  br i1 %93, label %94, label %104

94:                                               ; preds = %91
  %95 = load i8*, i8** %6, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = getelementptr inbounds i8, i8* %98, i64 -3
  %100 = call i64 @strncmp(i8* %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  br label %107

103:                                              ; preds = %94
  br label %104

104:                                              ; preds = %103, %91, %83
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %5, align 4
  br label %73

107:                                              ; preds = %102, %73
  %108 = load i8*, i8** %6, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  store i8 0, i8* %111, align 1
  %112 = load i32, i32* %5, align 4
  %113 = icmp slt i32 %112, 14
  br i1 %113, label %114, label %121

114:                                              ; preds = %107
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @netclose(i32 %117)
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  store i32 -1, i32* %120, align 8
  store i32 -1, i32* %2, align 4
  br label %183

121:                                              ; preds = %107
  %122 = load i8*, i8** %6, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 8
  %124 = call i32 @strtol(i8* %123, i8** %7, i32 0)
  store i32 %124, i32* %4, align 4
  %125 = load i32, i32* %4, align 4
  %126 = icmp eq i32 %125, 200
  br i1 %126, label %127, label %159

127:                                              ; preds = %121
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = icmp sgt i64 %130, 0
  br i1 %131, label %132, label %159

132:                                              ; preds = %127
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %8, align 4
  br label %137

137:                                              ; preds = %146, %132
  %138 = load i32, i32* %8, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %158

140:                                              ; preds = %137
  %141 = load i32, i32* %8, align 4
  %142 = icmp slt i32 %141, 65536
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = load i32, i32* %8, align 4
  br label %146

145:                                              ; preds = %140
  br label %146

146:                                              ; preds = %145, %143
  %147 = phi i32 [ %144, %143 ], [ 65536, %145 ]
  store i32 %147, i32* %9, align 4
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i8*, i8** %6, align 8
  %152 = load i32, i32* %9, align 4
  %153 = call i64 @my_netread(i32 %150, i8* %151, i32 %152)
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = sub nsw i64 %155, %153
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %8, align 4
  br label %137

158:                                              ; preds = %137
  br label %178

159:                                              ; preds = %127, %121
  %160 = load i32, i32* %4, align 4
  %161 = icmp ne i32 %160, 206
  br i1 %161, label %162, label %177

162:                                              ; preds = %159
  %163 = load i32, i32* %4, align 4
  %164 = icmp ne i32 %163, 200
  br i1 %164, label %165, label %177

165:                                              ; preds = %162
  %166 = load i8*, i8** %6, align 8
  %167 = call i32 @free(i8* %166)
  %168 = load i32, i32* @stderr, align 4
  %169 = load i32, i32* %4, align 4
  %170 = call i32 @fprintf(i32 %168, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 %169)
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @netclose(i32 %173)
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  store i32 -1, i32* %176, align 8
  store i32 -1, i32* %2, align 4
  br label %183

177:                                              ; preds = %162, %159
  br label %178

178:                                              ; preds = %177, %158
  %179 = load i8*, i8** %6, align 8
  %180 = call i32 @free(i8* %179)
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 4
  store i32 1, i32* %182, align 8
  store i32 0, i32* %2, align 4
  br label %183

183:                                              ; preds = %178, %165, %114
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local i32 @netclose(i32) #1

declare dso_local i32 @socket_connect(i32, i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i64 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @netwrite(i32, i8*, i32) #1

declare dso_local i64 @netread(i32, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @my_netread(i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
