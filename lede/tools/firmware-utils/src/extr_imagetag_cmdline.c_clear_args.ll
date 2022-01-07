; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_imagetag_cmdline.c_clear_args.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_imagetag_cmdline.c_clear_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gengetopt_args_info = type { i64, i32*, i64, i32*, i32*, i32*, i8*, i32*, i8*, i32*, i32*, i64, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i8*, i32*, i8*, i32*, i8*, i32*, i8*, i32*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [11 x i8] c"0xBFC00000\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"0x10000\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Broadcom Corporatio\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"ver. 2.0\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gengetopt_args_info*)* @clear_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_args(%struct.gengetopt_args_info* %0) #0 {
  %2 = alloca %struct.gengetopt_args_info*, align 8
  store %struct.gengetopt_args_info* %0, %struct.gengetopt_args_info** %2, align 8
  %3 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %4 = call i32 @FIX_UNUSED(%struct.gengetopt_args_info* %3)
  %5 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %6 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %5, i32 0, i32 47
  store i32* null, i32** %6, align 8
  %7 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %8 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %7, i32 0, i32 46
  store i32* null, i32** %8, align 8
  %9 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %10 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %9, i32 0, i32 45
  store i32* null, i32** %10, align 8
  %11 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %12 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %11, i32 0, i32 44
  store i32* null, i32** %12, align 8
  %13 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %14 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %13, i32 0, i32 43
  store i32* null, i32** %14, align 8
  %15 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %16 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %15, i32 0, i32 42
  store i32* null, i32** %16, align 8
  %17 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %18 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %17, i32 0, i32 41
  store i32* null, i32** %18, align 8
  %19 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %20 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %19, i32 0, i32 40
  store i32* null, i32** %20, align 8
  %21 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %22 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %21, i32 0, i32 39
  store i32* null, i32** %22, align 8
  %23 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %24 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %23, i32 0, i32 38
  store i32* null, i32** %24, align 8
  %25 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %26 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %25, i32 0, i32 37
  store i32* null, i32** %26, align 8
  %27 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %28 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %27, i32 0, i32 36
  store i32* null, i32** %28, align 8
  %29 = call i8* @gengetopt_strdup(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %31 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %30, i32 0, i32 35
  store i8* %29, i8** %31, align 8
  %32 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %33 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %32, i32 0, i32 34
  store i32* null, i32** %33, align 8
  %34 = call i8* @gengetopt_strdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %36 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %35, i32 0, i32 33
  store i8* %34, i8** %36, align 8
  %37 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %38 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %37, i32 0, i32 32
  store i32* null, i32** %38, align 8
  %39 = call i8* @gengetopt_strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %40 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %41 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %40, i32 0, i32 31
  store i8* %39, i8** %41, align 8
  %42 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %43 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %42, i32 0, i32 30
  store i32* null, i32** %43, align 8
  %44 = call i8* @gengetopt_strdup(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %45 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %46 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %45, i32 0, i32 29
  store i8* %44, i8** %46, align 8
  %47 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %48 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %47, i32 0, i32 28
  store i32* null, i32** %48, align 8
  %49 = call i8* @gengetopt_strdup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %50 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %51 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %50, i32 0, i32 27
  store i8* %49, i8** %51, align 8
  %52 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %53 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %52, i32 0, i32 26
  store i32* null, i32** %53, align 8
  %54 = call i8* @gengetopt_strdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %56 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %55, i32 0, i32 25
  store i8* %54, i8** %56, align 8
  %57 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %58 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %57, i32 0, i32 24
  store i32* null, i32** %58, align 8
  %59 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %60 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %59, i32 0, i32 23
  store i32* null, i32** %60, align 8
  %61 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %62 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %61, i32 0, i32 22
  store i32* null, i32** %62, align 8
  %63 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %64 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %63, i32 0, i32 21
  store i32* null, i32** %64, align 8
  %65 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %66 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %65, i32 0, i32 20
  store i32* null, i32** %66, align 8
  %67 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %68 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %67, i32 0, i32 19
  store i32* null, i32** %68, align 8
  %69 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %70 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %69, i32 0, i32 18
  store i32* null, i32** %70, align 8
  %71 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %72 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %71, i32 0, i32 17
  store i32* null, i32** %72, align 8
  %73 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %74 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %73, i32 0, i32 16
  store i32* null, i32** %74, align 8
  %75 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %76 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %75, i32 0, i32 15
  store i32* null, i32** %76, align 8
  %77 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %78 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %77, i32 0, i32 14
  store i32* null, i32** %78, align 8
  %79 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %80 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %79, i32 0, i32 13
  store i32* null, i32** %80, align 8
  %81 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %82 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %81, i32 0, i32 12
  store i32* null, i32** %82, align 8
  %83 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %84 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %83, i32 0, i32 11
  store i64 0, i64* %84, align 8
  %85 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %86 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %85, i32 0, i32 10
  store i32* null, i32** %86, align 8
  %87 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %88 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %87, i32 0, i32 9
  store i32* null, i32** %88, align 8
  %89 = call i8* @gengetopt_strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %90 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %91 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %90, i32 0, i32 8
  store i8* %89, i8** %91, align 8
  %92 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %93 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %92, i32 0, i32 7
  store i32* null, i32** %93, align 8
  %94 = call i8* @gengetopt_strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %95 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %96 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %95, i32 0, i32 6
  store i8* %94, i8** %96, align 8
  %97 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %98 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %97, i32 0, i32 5
  store i32* null, i32** %98, align 8
  %99 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %100 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %99, i32 0, i32 4
  store i32* null, i32** %100, align 8
  %101 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %102 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %101, i32 0, i32 3
  store i32* null, i32** %102, align 8
  %103 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %104 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %103, i32 0, i32 2
  store i64 0, i64* %104, align 8
  %105 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %106 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %105, i32 0, i32 1
  store i32* null, i32** %106, align 8
  %107 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %108 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %107, i32 0, i32 0
  store i64 0, i64* %108, align 8
  ret void
}

declare dso_local i32 @FIX_UNUSED(%struct.gengetopt_args_info*) #1

declare dso_local i8* @gengetopt_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
