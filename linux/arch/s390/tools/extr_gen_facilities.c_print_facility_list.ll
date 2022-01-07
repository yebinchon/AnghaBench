; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/tools/extr_gen_facilities.c_print_facility_list.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/tools/extr_gen_facilities.c_print_facility_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.facility_def = type { i32*, i8* }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"#define %s \00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"_AC(0x%016llx,UL)%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.facility_def*)* @print_facility_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_facility_list(%struct.facility_def* %0) #0 {
  %2 = alloca %struct.facility_def*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  store %struct.facility_def* %0, %struct.facility_def** %2, align 8
  %8 = call i64* @calloc(i32 1, i32 8)
  store i64* %8, i64** %7, align 8
  %9 = load i64*, i64** %7, align 8
  %10 = icmp ne i64* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EXIT_FAILURE, align 4
  %13 = call i32 @exit(i32 %12) #3
  unreachable

14:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %78, %14
  %16 = load %struct.facility_def*, %struct.facility_def** %2, align 8
  %17 = getelementptr inbounds %struct.facility_def, %struct.facility_def* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %81

24:                                               ; preds = %15
  %25 = load %struct.facility_def*, %struct.facility_def** %2, align 8
  %26 = getelementptr inbounds %struct.facility_def, %struct.facility_def* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 63
  %33 = sub nsw i32 63, %32
  store i32 %33, i32* %4, align 4
  %34 = load %struct.facility_def*, %struct.facility_def** %2, align 8
  %35 = getelementptr inbounds %struct.facility_def, %struct.facility_def* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %40, 64
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %3, align 4
  %44 = icmp ugt i32 %42, %43
  br i1 %44, label %45, label %68

45:                                               ; preds = %24
  %46 = load i64*, i64** %7, align 8
  %47 = load i32, i32* %5, align 4
  %48 = add i32 %47, 1
  %49 = mul i32 %48, 8
  %50 = call i64* @realloc(i64* %46, i32 %49)
  store i64* %50, i64** %7, align 8
  %51 = load i64*, i64** %7, align 8
  %52 = icmp ne i64* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %45
  %54 = load i32, i32* @EXIT_FAILURE, align 4
  %55 = call i32 @exit(i32 %54) #3
  unreachable

56:                                               ; preds = %45
  %57 = load i64*, i64** %7, align 8
  %58 = load i32, i32* %3, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = getelementptr inbounds i64, i64* %60, i64 1
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %3, align 4
  %64 = sub i32 %62, %63
  %65 = mul i32 %64, 8
  %66 = call i32 @memset(i64* %61, i32 0, i32 %65)
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %56, %24
  %69 = load i32, i32* %4, align 4
  %70 = zext i32 %69 to i64
  %71 = shl i64 1, %70
  %72 = load i64*, i64** %7, align 8
  %73 = load i32, i32* %5, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = or i64 %76, %71
  store i64 %77, i64* %75, align 8
  br label %78

78:                                               ; preds = %68
  %79 = load i32, i32* %6, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %15

81:                                               ; preds = %15
  %82 = load %struct.facility_def*, %struct.facility_def** %2, align 8
  %83 = getelementptr inbounds %struct.facility_def, %struct.facility_def* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %84)
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %102, %81
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %3, align 4
  %89 = icmp ule i32 %87, %88
  br i1 %89, label %90, label %105

90:                                               ; preds = %86
  %91 = load i64*, i64** %7, align 8
  %92 = load i32, i32* %6, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %3, align 4
  %98 = icmp ult i32 %96, %97
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 44, i32 10
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %95, i32 %100)
  br label %102

102:                                              ; preds = %90
  %103 = load i32, i32* %6, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %86

105:                                              ; preds = %86
  %106 = load i64*, i64** %7, align 8
  %107 = call i32 @free(i64* %106)
  ret void
}

declare dso_local i64* @calloc(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64* @realloc(i64*, i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
