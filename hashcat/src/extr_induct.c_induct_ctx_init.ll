; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_induct.c_induct_ctx_init.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_induct.c_induct_ctx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__*, %struct.TYPE_8__*, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32*, i32 }
%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_10__ = type { i32 }

@ATTACK_MODE_STRAIGHT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s/%s.%s\00", align 1
@INDUCT_DIR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@ENOTEMPTY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"%s/%s.induct.%d\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Rename directory %s to %s: %s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @induct_ctx_init(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %4, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %5, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %6, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %178

25:                                               ; preds = %1
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %178

31:                                               ; preds = %25
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %178

37:                                               ; preds = %31
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %178

43:                                               ; preds = %37
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %178

49:                                               ; preds = %43
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %178

55:                                               ; preds = %49
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %178

61:                                               ; preds = %55
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %178

67:                                               ; preds = %61
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %178

73:                                               ; preds = %67
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 9
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %178

79:                                               ; preds = %73
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 10
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i32 0, i32* %2, align 4
  br label %178

85:                                               ; preds = %79
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 11
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @ATTACK_MODE_STRAIGHT, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  store i32 0, i32* %2, align 4
  br label %178

92:                                               ; preds = %85
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 12
  %97 = load i32*, i32** %96, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %99, label %170

99:                                               ; preds = %92
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 13
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @INDUCT_DIR, align 4
  %107 = call i32 @hc_asprintf(i8** %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %102, i32 %105, i32 %106)
  %108 = load i8*, i8** %7, align 8
  %109 = call i32 @rmdir(i8* %108)
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %154

111:                                              ; preds = %99
  %112 = load i64, i64* @errno, align 8
  %113 = load i64, i64* @ENOENT, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  br label %153

116:                                              ; preds = %111
  %117 = load i64, i64* @errno, align 8
  %118 = load i64, i64* @ENOTEMPTY, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %144

120:                                              ; preds = %116
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 13
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @time(i32* null)
  %128 = trunc i64 %127 to i32
  %129 = call i32 @hc_asprintf(i8** %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %123, i32 %126, i32 %128)
  %130 = load i8*, i8** %7, align 8
  %131 = load i8*, i8** %8, align 8
  %132 = call i64 @rename(i8* %130, i8* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %120
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %136 = load i8*, i8** %7, align 8
  %137 = load i8*, i8** %8, align 8
  %138 = load i64, i64* @errno, align 8
  %139 = call i32 @strerror(i64 %138)
  %140 = call i32 (%struct.TYPE_9__*, i8*, i8*, i8*, ...) @event_log_error(%struct.TYPE_9__* %135, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %136, i8* %137, i32 %139)
  store i32 -1, i32* %2, align 4
  br label %178

141:                                              ; preds = %120
  %142 = load i8*, i8** %8, align 8
  %143 = call i32 @hcfree(i8* %142)
  br label %152

144:                                              ; preds = %116
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %146 = load i8*, i8** %7, align 8
  %147 = load i64, i64* @errno, align 8
  %148 = call i32 @strerror(i64 %147)
  %149 = sext i32 %148 to i64
  %150 = inttoptr i64 %149 to i8*
  %151 = call i32 (%struct.TYPE_9__*, i8*, i8*, i8*, ...) @event_log_error(%struct.TYPE_9__* %145, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %146, i8* %150)
  store i32 -1, i32* %2, align 4
  br label %178

152:                                              ; preds = %141
  br label %153

153:                                              ; preds = %152, %115
  br label %154

154:                                              ; preds = %153, %99
  %155 = load i8*, i8** %7, align 8
  %156 = call i32 @hc_mkdir(i8* %155, i32 448)
  %157 = icmp eq i32 %156, -1
  br i1 %157, label %158, label %166

158:                                              ; preds = %154
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %160 = load i8*, i8** %7, align 8
  %161 = load i64, i64* @errno, align 8
  %162 = call i32 @strerror(i64 %161)
  %163 = sext i32 %162 to i64
  %164 = inttoptr i64 %163 to i8*
  %165 = call i32 (%struct.TYPE_9__*, i8*, i8*, i8*, ...) @event_log_error(%struct.TYPE_9__* %159, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %160, i8* %164)
  store i32 -1, i32* %2, align 4
  br label %178

166:                                              ; preds = %154
  %167 = load i8*, i8** %7, align 8
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 1
  store i8* %167, i8** %169, align 8
  br label %177

170:                                              ; preds = %92
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 12
  %173 = load i32*, i32** %172, align 8
  %174 = call i8* @hcstrdup(i32* %173)
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 1
  store i8* %174, i8** %176, align 8
  br label %177

177:                                              ; preds = %170, %166
  store i32 0, i32* %2, align 4
  br label %178

178:                                              ; preds = %177, %158, %144, %134, %91, %84, %78, %72, %66, %60, %54, %48, %42, %36, %30, %24
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local i32 @hc_asprintf(i8**, i8*, i32, i32, i32) #1

declare dso_local i32 @rmdir(i8*) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i64 @rename(i8*, i8*) #1

declare dso_local i32 @event_log_error(%struct.TYPE_9__*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @hcfree(i8*) #1

declare dso_local i32 @hc_mkdir(i8*, i32) #1

declare dso_local i8* @hcstrdup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
