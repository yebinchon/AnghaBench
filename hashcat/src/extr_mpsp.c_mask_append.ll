; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_mpsp.c_mask_append.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_mpsp.c_mask_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32, i64, i64, i64 }
%struct.TYPE_8__ = type { i64, i64, i32 }

@ATTACK_MODE_BF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s,\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s,%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i8*)* @mask_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mask_append(%struct.TYPE_9__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %8, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %9, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %109

31:                                               ; preds = %3
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @mp_get_length(i8* %32, i32 %35)
  store i64 %36, i64* %10, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %11, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %12, align 8
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* %10, align 8
  %45 = call i64 @MIN(i64 %43, i64 %44)
  store i64 %45, i64* %12, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ATTACK_MODE_BF, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %31
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %13, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %14, align 8
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* %13, align 8
  %60 = call i64 @MAX(i64 %58, i64 %59)
  store i64 %60, i64* %11, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* %14, align 8
  %63 = call i64 @MIN(i64 %61, i64 %62)
  store i64 %63, i64* %12, align 8
  br label %64

64:                                               ; preds = %51, %31
  %65 = load i64, i64* %11, align 8
  store i64 %65, i64* %15, align 8
  br label %66

66:                                               ; preds = %105, %64
  %67 = load i64, i64* %15, align 8
  %68 = load i64, i64* %12, align 8
  %69 = icmp sle i64 %67, %68
  br i1 %69, label %70, label %108

70:                                               ; preds = %66
  %71 = call i64 @hcmalloc(i32 256)
  %72 = inttoptr i64 %71 to i8*
  store i8* %72, i8** %16, align 8
  %73 = load i8*, i8** %16, align 8
  store i8* %73, i8** %17, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %70
  %77 = load i8*, i8** %16, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = call i32 @snprintf(i8* %77, i32 256, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %78)
  %80 = load i8*, i8** %17, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  store i8* %82, i8** %17, align 8
  br label %83

83:                                               ; preds = %76, %70
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = call i32 @strlen(i8* %86)
  %88 = load i64, i64* %15, align 8
  %89 = load i8*, i8** %17, align 8
  %90 = call i32 @mp_get_truncated_mask(%struct.TYPE_9__* %84, i8* %85, i32 %87, i64 %88, i8* %89)
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %95

92:                                               ; preds = %83
  %93 = load i8*, i8** %16, align 8
  %94 = call i32 @hcfree(i8* %93)
  br label %108

95:                                               ; preds = %83
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %97 = load i8*, i8** %16, align 8
  %98 = call i32 @mask_append_final(%struct.TYPE_9__* %96, i8* %97)
  store i32 %98, i32* %18, align 4
  %99 = load i8*, i8** %16, align 8
  %100 = call i32 @hcfree(i8* %99)
  %101 = load i32, i32* %18, align 4
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  store i32 -1, i32* %4, align 4
  br label %134

104:                                              ; preds = %95
  br label %105

105:                                              ; preds = %104
  %106 = load i64, i64* %15, align 8
  %107 = add nsw i64 %106, 1
  store i64 %107, i64* %15, align 8
  br label %66

108:                                              ; preds = %92, %66
  br label %133

109:                                              ; preds = %3
  %110 = load i8*, i8** %7, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %125

112:                                              ; preds = %109
  store i8* null, i8** %19, align 8
  %113 = load i8*, i8** %7, align 8
  %114 = load i8*, i8** %6, align 8
  %115 = call i32 @hc_asprintf(i8** %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %113, i8* %114)
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %117 = load i8*, i8** %19, align 8
  %118 = call i32 @mask_append_final(%struct.TYPE_9__* %116, i8* %117)
  store i32 %118, i32* %20, align 4
  %119 = load i8*, i8** %19, align 8
  %120 = call i32 @hcfree(i8* %119)
  %121 = load i32, i32* %20, align 4
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %123, label %124

123:                                              ; preds = %112
  store i32 -1, i32* %4, align 4
  br label %134

124:                                              ; preds = %112
  br label %132

125:                                              ; preds = %109
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %127 = load i8*, i8** %6, align 8
  %128 = call i32 @mask_append_final(%struct.TYPE_9__* %126, i8* %127)
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  store i32 -1, i32* %4, align 4
  br label %134

131:                                              ; preds = %125
  br label %132

132:                                              ; preds = %131, %124
  br label %133

133:                                              ; preds = %132, %108
  store i32 0, i32* %4, align 4
  br label %134

134:                                              ; preds = %133, %130, %123, %103
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i64 @mp_get_length(i8*, i32) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i64 @MAX(i64, i64) #1

declare dso_local i64 @hcmalloc(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @mp_get_truncated_mask(%struct.TYPE_9__*, i8*, i32, i64, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @hcfree(i8*) #1

declare dso_local i32 @mask_append_final(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @hc_asprintf(i8**, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
