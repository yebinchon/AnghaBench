; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_add_short_atom_header.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_add_short_atom_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_dev = type { i32 }

@SHORT_ATOM_ID = common dso_local global i32 0, align 4
@SHORT_ATOM_BYTESTRING = common dso_local global i32 0, align 4
@SHORT_ATOM_SIGNED = common dso_local global i32 0, align 4
@SHORT_ATOM_LEN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.opal_dev*, i32, i32, i32)* @add_short_atom_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_short_atom_header(%struct.opal_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.opal_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.opal_dev* %0, %struct.opal_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @SHORT_ATOM_ID, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @SHORT_ATOM_BYTESTRING, align 4
  br label %17

16:                                               ; preds = %4
  br label %17

17:                                               ; preds = %16, %14
  %18 = phi i32 [ %15, %14 ], [ 0, %16 ]
  %19 = load i32, i32* %9, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @SHORT_ATOM_SIGNED, align 4
  br label %26

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ 0, %25 ]
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @SHORT_ATOM_LEN_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %9, align 4
  %35 = load %struct.opal_dev*, %struct.opal_dev** %5, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %35, i32 %36)
  ret void
}

declare dso_local i32 @add_token_u8(i32*, %struct.opal_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
