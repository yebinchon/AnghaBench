; ModuleID = '/home/carl/AnghaBench/linux/block/partitions/extr_ldm.c_ldm_partition.c'
source_filename = "/home/carl/AnghaBench/linux/block/partitions/extr_ldm.c_ldm_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_partitions = type { i32 }
%struct.ldmdb = type { i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Out of memory.\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Failed to read the VBLKs from the database.\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Parsed LDM database successfully.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldm_partition(%struct.parsed_partitions* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.parsed_partitions*, align 8
  %4 = alloca %struct.ldmdb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.parsed_partitions* %0, %struct.parsed_partitions** %3, align 8
  store i32 -1, i32* %6, align 4
  %7 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %8 = icmp ne %struct.parsed_partitions* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %13 = call i32 @ldm_validate_partition_table(%struct.parsed_partitions* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %98

16:                                               ; preds = %1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.ldmdb* @kmalloc(i32 32, i32 %17)
  store %struct.ldmdb* %18, %struct.ldmdb** %4, align 8
  %19 = load %struct.ldmdb*, %struct.ldmdb** %4, align 8
  %20 = icmp ne %struct.ldmdb* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = call i32 @ldm_crit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %94

23:                                               ; preds = %16
  %24 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %25 = load %struct.ldmdb*, %struct.ldmdb** %4, align 8
  %26 = getelementptr inbounds %struct.ldmdb, %struct.ldmdb* %25, i32 0, i32 5
  %27 = call i32 @ldm_validate_privheads(%struct.parsed_partitions* %24, %struct.TYPE_2__* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  br label %94

30:                                               ; preds = %23
  %31 = load %struct.ldmdb*, %struct.ldmdb** %4, align 8
  %32 = getelementptr inbounds %struct.ldmdb, %struct.ldmdb* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %5, align 8
  %35 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.ldmdb*, %struct.ldmdb** %4, align 8
  %38 = call i32 @ldm_validate_tocblocks(%struct.parsed_partitions* %35, i64 %36, %struct.ldmdb* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %30
  %41 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load %struct.ldmdb*, %struct.ldmdb** %4, align 8
  %44 = call i32 @ldm_validate_vmdb(%struct.parsed_partitions* %41, i64 %42, %struct.ldmdb* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40, %30
  br label %94

47:                                               ; preds = %40
  %48 = load %struct.ldmdb*, %struct.ldmdb** %4, align 8
  %49 = getelementptr inbounds %struct.ldmdb, %struct.ldmdb* %48, i32 0, i32 4
  %50 = call i32 @INIT_LIST_HEAD(i32* %49)
  %51 = load %struct.ldmdb*, %struct.ldmdb** %4, align 8
  %52 = getelementptr inbounds %struct.ldmdb, %struct.ldmdb* %51, i32 0, i32 3
  %53 = call i32 @INIT_LIST_HEAD(i32* %52)
  %54 = load %struct.ldmdb*, %struct.ldmdb** %4, align 8
  %55 = getelementptr inbounds %struct.ldmdb, %struct.ldmdb* %54, i32 0, i32 2
  %56 = call i32 @INIT_LIST_HEAD(i32* %55)
  %57 = load %struct.ldmdb*, %struct.ldmdb** %4, align 8
  %58 = getelementptr inbounds %struct.ldmdb, %struct.ldmdb* %57, i32 0, i32 1
  %59 = call i32 @INIT_LIST_HEAD(i32* %58)
  %60 = load %struct.ldmdb*, %struct.ldmdb** %4, align 8
  %61 = getelementptr inbounds %struct.ldmdb, %struct.ldmdb* %60, i32 0, i32 0
  %62 = call i32 @INIT_LIST_HEAD(i32* %61)
  %63 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load %struct.ldmdb*, %struct.ldmdb** %4, align 8
  %66 = call i32 @ldm_get_vblks(%struct.parsed_partitions* %63, i64 %64, %struct.ldmdb* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %47
  %69 = call i32 @ldm_crit(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %78

70:                                               ; preds = %47
  %71 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %72 = load %struct.ldmdb*, %struct.ldmdb** %4, align 8
  %73 = call i64 @ldm_create_data_partitions(%struct.parsed_partitions* %71, %struct.ldmdb* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = call i32 @ldm_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %77

77:                                               ; preds = %75, %70
  br label %78

78:                                               ; preds = %77, %68
  %79 = load %struct.ldmdb*, %struct.ldmdb** %4, align 8
  %80 = getelementptr inbounds %struct.ldmdb, %struct.ldmdb* %79, i32 0, i32 4
  %81 = call i32 @ldm_free_vblks(i32* %80)
  %82 = load %struct.ldmdb*, %struct.ldmdb** %4, align 8
  %83 = getelementptr inbounds %struct.ldmdb, %struct.ldmdb* %82, i32 0, i32 3
  %84 = call i32 @ldm_free_vblks(i32* %83)
  %85 = load %struct.ldmdb*, %struct.ldmdb** %4, align 8
  %86 = getelementptr inbounds %struct.ldmdb, %struct.ldmdb* %85, i32 0, i32 2
  %87 = call i32 @ldm_free_vblks(i32* %86)
  %88 = load %struct.ldmdb*, %struct.ldmdb** %4, align 8
  %89 = getelementptr inbounds %struct.ldmdb, %struct.ldmdb* %88, i32 0, i32 1
  %90 = call i32 @ldm_free_vblks(i32* %89)
  %91 = load %struct.ldmdb*, %struct.ldmdb** %4, align 8
  %92 = getelementptr inbounds %struct.ldmdb, %struct.ldmdb* %91, i32 0, i32 0
  %93 = call i32 @ldm_free_vblks(i32* %92)
  br label %94

94:                                               ; preds = %78, %46, %29, %21
  %95 = load %struct.ldmdb*, %struct.ldmdb** %4, align 8
  %96 = call i32 @kfree(%struct.ldmdb* %95)
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %94, %15
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ldm_validate_partition_table(%struct.parsed_partitions*) #1

declare dso_local %struct.ldmdb* @kmalloc(i32, i32) #1

declare dso_local i32 @ldm_crit(i8*) #1

declare dso_local i32 @ldm_validate_privheads(%struct.parsed_partitions*, %struct.TYPE_2__*) #1

declare dso_local i32 @ldm_validate_tocblocks(%struct.parsed_partitions*, i64, %struct.ldmdb*) #1

declare dso_local i32 @ldm_validate_vmdb(%struct.parsed_partitions*, i64, %struct.ldmdb*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ldm_get_vblks(%struct.parsed_partitions*, i64, %struct.ldmdb*) #1

declare dso_local i64 @ldm_create_data_partitions(%struct.parsed_partitions*, %struct.ldmdb*) #1

declare dso_local i32 @ldm_debug(i8*) #1

declare dso_local i32 @ldm_free_vblks(i32*) #1

declare dso_local i32 @kfree(%struct.ldmdb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
