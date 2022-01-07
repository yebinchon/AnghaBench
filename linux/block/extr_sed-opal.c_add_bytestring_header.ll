; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_add_bytestring_header.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_add_bytestring_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_dev = type { i64, i32* }

@SHORT_ATOM_LEN_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Error adding bytestring: end of buffer.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.opal_dev*, i64)* @add_bytestring_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @add_bytestring_header(i32* %0, %struct.opal_dev* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.opal_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.opal_dev* %1, %struct.opal_dev** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 1, i64* %8, align 8
  store i32 1, i32* %9, align 4
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* @SHORT_ATOM_LEN_MASK, align 8
  %12 = xor i64 %11, -1
  %13 = and i64 %10, %12
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i64 2, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %15, %3
  %17 = load i32*, i32** %5, align 8
  %18 = load %struct.opal_dev*, %struct.opal_dev** %6, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %7, align 8
  %21 = add i64 %19, %20
  %22 = call i32 @can_add(i32* %17, %struct.opal_dev* %18, i64 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %16
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %45

26:                                               ; preds = %16
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.opal_dev*, %struct.opal_dev** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @add_short_atom_header(%struct.opal_dev* %30, i32 1, i32 0, i64 %31)
  br label %37

33:                                               ; preds = %26
  %34 = load %struct.opal_dev*, %struct.opal_dev** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @add_medium_atom_header(%struct.opal_dev* %34, i32 1, i32 0, i64 %35)
  br label %37

37:                                               ; preds = %33, %29
  %38 = load %struct.opal_dev*, %struct.opal_dev** %6, align 8
  %39 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.opal_dev*, %struct.opal_dev** %6, align 8
  %42 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  store i32* %44, i32** %4, align 8
  br label %45

45:                                               ; preds = %37, %24
  %46 = load i32*, i32** %4, align 8
  ret i32* %46
}

declare dso_local i32 @can_add(i32*, %struct.opal_dev*, i64) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @add_short_atom_header(%struct.opal_dev*, i32, i32, i64) #1

declare dso_local i32 @add_medium_atom_header(%struct.opal_dev*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
