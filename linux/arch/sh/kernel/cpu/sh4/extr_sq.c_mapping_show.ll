; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh4/extr_sq.c_mapping_show.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh4/extr_sq.c_mapping_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sq_mapping = type { i32, i32, i64, i64, %struct.sq_mapping* }

@sq_mapping_list = common dso_local global %struct.sq_mapping* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"%08lx-%08lx [%08lx]: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @mapping_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mapping_show(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sq_mapping**, align 8
  %4 = alloca %struct.sq_mapping*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  store i8* %6, i8** %5, align 8
  store %struct.sq_mapping** @sq_mapping_list, %struct.sq_mapping*** %3, align 8
  br label %7

7:                                                ; preds = %33, %1
  %8 = load %struct.sq_mapping**, %struct.sq_mapping*** %3, align 8
  %9 = load %struct.sq_mapping*, %struct.sq_mapping** %8, align 8
  store %struct.sq_mapping* %9, %struct.sq_mapping** %4, align 8
  %10 = icmp ne %struct.sq_mapping* %9, null
  br i1 %10, label %11, label %36

11:                                               ; preds = %7
  %12 = load i8*, i8** %5, align 8
  %13 = load %struct.sq_mapping*, %struct.sq_mapping** %4, align 8
  %14 = getelementptr inbounds %struct.sq_mapping, %struct.sq_mapping* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.sq_mapping*, %struct.sq_mapping** %4, align 8
  %17 = getelementptr inbounds %struct.sq_mapping, %struct.sq_mapping* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.sq_mapping*, %struct.sq_mapping** %4, align 8
  %20 = getelementptr inbounds %struct.sq_mapping, %struct.sq_mapping* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  %23 = load %struct.sq_mapping*, %struct.sq_mapping** %4, align 8
  %24 = getelementptr inbounds %struct.sq_mapping, %struct.sq_mapping* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sq_mapping*, %struct.sq_mapping** %4, align 8
  %27 = getelementptr inbounds %struct.sq_mapping, %struct.sq_mapping* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @sprintf(i8* %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %15, i64 %22, i32 %25, i32 %28)
  %30 = load i8*, i8** %5, align 8
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  store i8* %32, i8** %5, align 8
  br label %33

33:                                               ; preds = %11
  %34 = load %struct.sq_mapping*, %struct.sq_mapping** %4, align 8
  %35 = getelementptr inbounds %struct.sq_mapping, %struct.sq_mapping* %34, i32 0, i32 4
  store %struct.sq_mapping** %35, %struct.sq_mapping*** %3, align 8
  br label %7

36:                                               ; preds = %7
  %37 = load i8*, i8** %5, align 8
  %38 = load i8*, i8** %2, align 8
  %39 = ptrtoint i8* %37 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = trunc i64 %41 to i32
  ret i32 %42
}

declare dso_local i32 @sprintf(i8*, i8*, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
