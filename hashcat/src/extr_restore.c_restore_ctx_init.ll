; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_restore.c_restore_ctx_init.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_restore.c_restore_ctx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__*, %struct.TYPE_14__*, %struct.TYPE_16__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32 }
%struct.TYPE_14__ = type { i32, i32, i8**, i32, %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_13__ = type { i64, i32, i32 }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"%s/%s.restore\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%s/%s.restore.new\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s.new\00", align 1
@RESTORE_VERSION_MIN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"Incompatible restore-file version.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @restore_ctx_init(%struct.TYPE_15__* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %8, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %9, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %10, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %197

28:                                               ; preds = %3
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %197

34:                                               ; preds = %28
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %197

40:                                               ; preds = %34
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %197

46:                                               ; preds = %40
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %197

52:                                               ; preds = %46
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %197

58:                                               ; preds = %52
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %197

64:                                               ; preds = %58
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %197

70:                                               ; preds = %64
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 8
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i32 0, i32* %4, align 4
  br label %197

76:                                               ; preds = %70
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 9
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  br label %197

82:                                               ; preds = %76
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 10
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i32 0, i32* %4, align 4
  br label %197

88:                                               ; preds = %82
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 11
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store i32 0, i32* %4, align 4
  br label %197

94:                                               ; preds = %88
  %95 = load i32, i32* %6, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store i32 0, i32* %4, align 4
  br label %197

98:                                               ; preds = %94
  %99 = load i8**, i8*** %7, align 8
  %100 = icmp eq i8** %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i32 0, i32* %4, align 4
  br label %197

102:                                              ; preds = %98
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 13
  %105 = load i32*, i32** %104, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %130

107:                                              ; preds = %102
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 6
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = inttoptr i64 %113 to i32*
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 14
  %117 = load i32, i32* %116, align 8
  %118 = call i32 (i32*, i8*, i32*, ...) @hc_asprintf(i32* %109, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %114, i32 %117)
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 5
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = inttoptr i64 %124 to i32*
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 14
  %128 = load i32, i32* %127, align 8
  %129 = call i32 (i32*, i8*, i32*, ...) @hc_asprintf(i32* %120, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %125, i32 %128)
  br label %143

130:                                              ; preds = %102
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 13
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @hcstrdup(i32* %133)
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 6
  store i32 %134, i32* %136, align 4
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 5
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 13
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 (i32*, i8*, i32*, ...) @hc_asprintf(i32* %138, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %141)
  br label %143

143:                                              ; preds = %130, %107
  %144 = load i32, i32* %6, align 4
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  %147 = load i8**, i8*** %7, align 8
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 2
  store i8** %147, i8*** %149, align 8
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %151 = call i32 @init_restore(%struct.TYPE_15__* %150)
  %152 = icmp eq i32 %151, -1
  br i1 %152, label %153, label %154

153:                                              ; preds = %143
  store i32 -1, i32* %4, align 4
  br label %197

154:                                              ; preds = %143
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 0
  store i32 1, i32* %156, align 8
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 3
  store i32 0, i32* %158, align 8
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 12
  %161 = load i32, i32* %160, align 8
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %163, label %196

163:                                              ; preds = %154
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %165 = call i32 @read_restore(%struct.TYPE_15__* %164)
  %166 = icmp eq i32 %165, -1
  br i1 %166, label %167, label %168

167:                                              ; preds = %163
  store i32 -1, i32* %4, align 4
  br label %197

168:                                              ; preds = %163
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 4
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %170, align 8
  store %struct.TYPE_13__* %171, %struct.TYPE_13__** %11, align 8
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @RESTORE_VERSION_MIN, align 8
  %176 = icmp slt i64 %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %168
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %179 = call i32 @event_log_error(%struct.TYPE_15__* %178, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %197

180:                                              ; preds = %168
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %182 = call i32 @user_options_init(%struct.TYPE_15__* %181)
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @user_options_getopt(%struct.TYPE_15__* %183, i32 %186, i32 %189)
  %191 = icmp eq i32 %190, -1
  br i1 %191, label %192, label %193

192:                                              ; preds = %180
  store i32 -1, i32* %4, align 4
  br label %197

193:                                              ; preds = %180
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 3
  store i32 1, i32* %195, align 8
  br label %196

196:                                              ; preds = %193, %154
  store i32 0, i32* %4, align 4
  br label %197

197:                                              ; preds = %196, %192, %177, %167, %153, %101, %97, %93, %87, %81, %75, %69, %63, %57, %51, %45, %39, %33, %27
  %198 = load i32, i32* %4, align 4
  ret i32 %198
}

declare dso_local i32 @hc_asprintf(i32*, i8*, i32*, ...) #1

declare dso_local i32 @hcstrdup(i32*) #1

declare dso_local i32 @init_restore(%struct.TYPE_15__*) #1

declare dso_local i32 @read_restore(%struct.TYPE_15__*) #1

declare dso_local i32 @event_log_error(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @user_options_init(%struct.TYPE_15__*) #1

declare dso_local i32 @user_options_getopt(%struct.TYPE_15__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
