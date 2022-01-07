; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_fault.c_dump_pagetable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_fault.c_dump_pagetable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_ASCE_ORIGIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"AS:%016lx \00", align 1
@_ASCE_TYPE_MASK = common dso_local global i64 0, align 8
@_REGION1_INDEX = common dso_local global i64 0, align 8
@_REGION1_SHIFT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"R1:%016lx \00", align 1
@_REGION_ENTRY_INVALID = common dso_local global i64 0, align 8
@_REGION_ENTRY_ORIGIN = common dso_local global i64 0, align 8
@_REGION2_INDEX = common dso_local global i64 0, align 8
@_REGION2_SHIFT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"R2:%016lx \00", align 1
@_REGION3_INDEX = common dso_local global i64 0, align 8
@_REGION3_SHIFT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"R3:%016lx \00", align 1
@_REGION3_ENTRY_LARGE = common dso_local global i64 0, align 8
@_SEGMENT_INDEX = common dso_local global i64 0, align 8
@_SEGMENT_SHIFT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"S:%016lx \00", align 1
@_SEGMENT_ENTRY_INVALID = common dso_local global i64 0, align 8
@_SEGMENT_ENTRY_LARGE = common dso_local global i64 0, align 8
@_SEGMENT_ENTRY_ORIGIN = common dso_local global i64 0, align 8
@_PAGE_INDEX = common dso_local global i64 0, align 8
@_PAGE_SHIFT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"P:%016lx \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"BAD\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @dump_pagetable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_pagetable(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @_ASCE_ORIGIN, align 8
  %8 = and i64 %6, %7
  %9 = call i64* @__va(i64 %8)
  store i64* %9, i64** %5, align 8
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @pr_alert(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @_ASCE_TYPE_MASK, align 8
  %14 = and i64 %12, %13
  switch i64 %14, label %131 [
    i64 131, label %15
    i64 130, label %43
    i64 129, label %71
    i64 128, label %101
  ]

15:                                               ; preds = %2
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @_REGION1_INDEX, align 8
  %18 = and i64 %16, %17
  %19 = load i64, i64* @_REGION1_SHIFT, align 8
  %20 = lshr i64 %18, %19
  %21 = load i64*, i64** %5, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 %20
  store i64* %22, i64** %5, align 8
  %23 = load i64*, i64** %5, align 8
  %24 = call i64 @bad_address(i64* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %149

27:                                               ; preds = %15
  %28 = load i64*, i64** %5, align 8
  %29 = load i64, i64* %28, align 8
  %30 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = load i64*, i64** %5, align 8
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @_REGION_ENTRY_INVALID, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %147

37:                                               ; preds = %27
  %38 = load i64*, i64** %5, align 8
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @_REGION_ENTRY_ORIGIN, align 8
  %41 = and i64 %39, %40
  %42 = inttoptr i64 %41 to i64*
  store i64* %42, i64** %5, align 8
  br label %43

43:                                               ; preds = %2, %37
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @_REGION2_INDEX, align 8
  %46 = and i64 %44, %45
  %47 = load i64, i64* @_REGION2_SHIFT, align 8
  %48 = lshr i64 %46, %47
  %49 = load i64*, i64** %5, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 %48
  store i64* %50, i64** %5, align 8
  %51 = load i64*, i64** %5, align 8
  %52 = call i64 @bad_address(i64* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  br label %149

55:                                               ; preds = %43
  %56 = load i64*, i64** %5, align 8
  %57 = load i64, i64* %56, align 8
  %58 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %57)
  %59 = load i64*, i64** %5, align 8
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @_REGION_ENTRY_INVALID, align 8
  %62 = and i64 %60, %61
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %147

65:                                               ; preds = %55
  %66 = load i64*, i64** %5, align 8
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @_REGION_ENTRY_ORIGIN, align 8
  %69 = and i64 %67, %68
  %70 = inttoptr i64 %69 to i64*
  store i64* %70, i64** %5, align 8
  br label %71

71:                                               ; preds = %2, %65
  %72 = load i64, i64* %4, align 8
  %73 = load i64, i64* @_REGION3_INDEX, align 8
  %74 = and i64 %72, %73
  %75 = load i64, i64* @_REGION3_SHIFT, align 8
  %76 = lshr i64 %74, %75
  %77 = load i64*, i64** %5, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 %76
  store i64* %78, i64** %5, align 8
  %79 = load i64*, i64** %5, align 8
  %80 = call i64 @bad_address(i64* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %71
  br label %149

83:                                               ; preds = %71
  %84 = load i64*, i64** %5, align 8
  %85 = load i64, i64* %84, align 8
  %86 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 %85)
  %87 = load i64*, i64** %5, align 8
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @_REGION_ENTRY_INVALID, align 8
  %90 = load i64, i64* @_REGION3_ENTRY_LARGE, align 8
  %91 = or i64 %89, %90
  %92 = and i64 %88, %91
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  br label %147

95:                                               ; preds = %83
  %96 = load i64*, i64** %5, align 8
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @_REGION_ENTRY_ORIGIN, align 8
  %99 = and i64 %97, %98
  %100 = inttoptr i64 %99 to i64*
  store i64* %100, i64** %5, align 8
  br label %101

101:                                              ; preds = %2, %95
  %102 = load i64, i64* %4, align 8
  %103 = load i64, i64* @_SEGMENT_INDEX, align 8
  %104 = and i64 %102, %103
  %105 = load i64, i64* @_SEGMENT_SHIFT, align 8
  %106 = lshr i64 %104, %105
  %107 = load i64*, i64** %5, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 %106
  store i64* %108, i64** %5, align 8
  %109 = load i64*, i64** %5, align 8
  %110 = call i64 @bad_address(i64* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %101
  br label %149

113:                                              ; preds = %101
  %114 = load i64*, i64** %5, align 8
  %115 = load i64, i64* %114, align 8
  %116 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i64 %115)
  %117 = load i64*, i64** %5, align 8
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @_SEGMENT_ENTRY_INVALID, align 8
  %120 = load i64, i64* @_SEGMENT_ENTRY_LARGE, align 8
  %121 = or i64 %119, %120
  %122 = and i64 %118, %121
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %113
  br label %147

125:                                              ; preds = %113
  %126 = load i64*, i64** %5, align 8
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @_SEGMENT_ENTRY_ORIGIN, align 8
  %129 = and i64 %127, %128
  %130 = inttoptr i64 %129 to i64*
  store i64* %130, i64** %5, align 8
  br label %131

131:                                              ; preds = %125, %2
  %132 = load i64, i64* %4, align 8
  %133 = load i64, i64* @_PAGE_INDEX, align 8
  %134 = and i64 %132, %133
  %135 = load i64, i64* @_PAGE_SHIFT, align 8
  %136 = lshr i64 %134, %135
  %137 = load i64*, i64** %5, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 %136
  store i64* %138, i64** %5, align 8
  %139 = load i64*, i64** %5, align 8
  %140 = call i64 @bad_address(i64* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %131
  br label %149

143:                                              ; preds = %131
  %144 = load i64*, i64** %5, align 8
  %145 = load i64, i64* %144, align 8
  %146 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i64 %145)
  br label %147

147:                                              ; preds = %143, %124, %94, %64, %36
  %148 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %151

149:                                              ; preds = %142, %112, %82, %54, %26
  %150 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %151

151:                                              ; preds = %149, %147
  ret void
}

declare dso_local i64* @__va(i64) #1

declare dso_local i32 @pr_alert(i8*, i64) #1

declare dso_local i64 @bad_address(i64*) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
