; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_add_medium_atom_header.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_add_medium_atom_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_dev = type { i32*, i32 }

@MEDIUM_ATOM_ID = common dso_local global i32 0, align 4
@MEDIUM_ATOM_BYTESTRING = common dso_local global i32 0, align 4
@MEDIUM_ATOM_SIGNED = common dso_local global i32 0, align 4
@MEDIUM_ATOM_LEN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.opal_dev*, i32, i32, i32)* @add_medium_atom_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_medium_atom_header(%struct.opal_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.opal_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.opal_dev* %0, %struct.opal_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @MEDIUM_ATOM_ID, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = load i32, i32* @MEDIUM_ATOM_BYTESTRING, align 4
  br label %16

15:                                               ; preds = %4
  br label %16

16:                                               ; preds = %15, %13
  %17 = phi i32 [ %14, %13 ], [ 0, %15 ]
  %18 = load i32, i32* %9, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @MEDIUM_ATOM_SIGNED, align 4
  br label %25

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  %27 = load i32, i32* %9, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = ashr i32 %29, 8
  %31 = load i32, i32* @MEDIUM_ATOM_LEN_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.opal_dev*, %struct.opal_dev** %5, align 8
  %37 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.opal_dev*, %struct.opal_dev** %5, align 8
  %40 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i32, i32* %38, i64 %43
  store i32 %35, i32* %44, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.opal_dev*, %struct.opal_dev** %5, align 8
  %47 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.opal_dev*, %struct.opal_dev** %5, align 8
  %50 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i32, i32* %48, i64 %53
  store i32 %45, i32* %54, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
