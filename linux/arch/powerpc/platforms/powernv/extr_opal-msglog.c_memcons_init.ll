; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-msglog.c_memcons_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-msglog.c_memcons_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memcons = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"%s property not found, no message log\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"memory console address is invalid\0A\00", align 1
@MEMCONS_MAGIC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"memory console version is invalid\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.memcons* @memcons_init(%struct.device_node* %0, i8* %1) #0 {
  %3 = alloca %struct.memcons*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.memcons*, align 8
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.device_node*, %struct.device_node** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @of_property_read_u64(%struct.device_node* %8, i8* %9, i32* %6)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %13)
  br label %33

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.memcons* @phys_to_virt(i32 %16)
  store %struct.memcons* %17, %struct.memcons** %7, align 8
  %18 = load %struct.memcons*, %struct.memcons** %7, align 8
  %19 = icmp ne %struct.memcons* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %33

22:                                               ; preds = %15
  %23 = load %struct.memcons*, %struct.memcons** %7, align 8
  %24 = getelementptr inbounds %struct.memcons, %struct.memcons* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @be64_to_cpu(i32 %25)
  %27 = load i64, i64* @MEMCONS_MAGIC, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %33

31:                                               ; preds = %22
  %32 = load %struct.memcons*, %struct.memcons** %7, align 8
  store %struct.memcons* %32, %struct.memcons** %3, align 8
  br label %34

33:                                               ; preds = %29, %20, %12
  store %struct.memcons* null, %struct.memcons** %3, align 8
  br label %34

34:                                               ; preds = %33, %31
  %35 = load %struct.memcons*, %struct.memcons** %3, align 8
  ret %struct.memcons* %35
}

declare dso_local i64 @of_property_read_u64(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local %struct.memcons* @phys_to_virt(i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
