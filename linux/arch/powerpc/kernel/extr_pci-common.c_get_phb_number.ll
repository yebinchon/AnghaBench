; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci-common.c_get_phb_number.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci-common.c_get_phb_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"ibm,opal-phbid\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@MAX_PHBS = common dso_local global i32 0, align 4
@phb_bitmap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*)* @get_phb_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_phb_number(%struct.device_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  store i32 -1, i32* %5, align 4
  %8 = load %struct.device_node*, %struct.device_node** %3, align 8
  %9 = call i32 @of_property_read_u64(%struct.device_node* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %7)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.device_node*, %struct.device_node** %3, align 8
  %14 = call i32 @of_property_read_u32_index(%struct.device_node* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 1, i32* %6)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %12, %1
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @MAX_PHBS, align 4
  %22 = sub nsw i32 %21, 1
  %23 = and i32 %20, %22
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %19, %16
  %25 = load i32, i32* %5, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @phb_bitmap, align 4
  %30 = call i32 @test_and_set_bit(i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %47

34:                                               ; preds = %27, %24
  %35 = load i32, i32* @phb_bitmap, align 4
  %36 = load i32, i32* @MAX_PHBS, align 4
  %37 = call i32 @find_first_zero_bit(i32 %35, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @MAX_PHBS, align 4
  %40 = icmp sge i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @BUG_ON(i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @phb_bitmap, align 4
  %45 = call i32 @set_bit(i32 %43, i32 %44)
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %34, %32
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @of_property_read_u64(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
