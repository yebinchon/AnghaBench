; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/platforms/iss/extr_simdisk.c_simdisk_teardown.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/platforms/iss/extr_simdisk.c_simdisk_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.simdisk = type { i64, i64 }
%struct.proc_dir_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.simdisk*, i32, %struct.proc_dir_entry*)* @simdisk_teardown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @simdisk_teardown(%struct.simdisk* %0, i32 %1, %struct.proc_dir_entry* %2) #0 {
  %4 = alloca %struct.simdisk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.proc_dir_entry*, align 8
  %7 = alloca [2 x i8], align 1
  store %struct.simdisk* %0, %struct.simdisk** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.proc_dir_entry* %2, %struct.proc_dir_entry** %6, align 8
  %8 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %9 = load i32, i32* %5, align 4
  %10 = add nsw i32 48, %9
  %11 = trunc i32 %10 to i8
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds i8, i8* %8, i64 1
  store i8 0, i8* %12, align 1
  %13 = load %struct.simdisk*, %struct.simdisk** %4, align 8
  %14 = call i32 @simdisk_detach(%struct.simdisk* %13)
  %15 = load %struct.simdisk*, %struct.simdisk** %4, align 8
  %16 = getelementptr inbounds %struct.simdisk, %struct.simdisk* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.simdisk*, %struct.simdisk** %4, align 8
  %21 = getelementptr inbounds %struct.simdisk, %struct.simdisk* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @del_gendisk(i64 %22)
  br label %24

24:                                               ; preds = %19, %3
  %25 = load %struct.simdisk*, %struct.simdisk** %4, align 8
  %26 = getelementptr inbounds %struct.simdisk, %struct.simdisk* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.simdisk*, %struct.simdisk** %4, align 8
  %31 = getelementptr inbounds %struct.simdisk, %struct.simdisk* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @blk_cleanup_queue(i64 %32)
  br label %34

34:                                               ; preds = %29, %24
  %35 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %36 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %37 = call i32 @remove_proc_entry(i8* %35, %struct.proc_dir_entry* %36)
  ret void
}

declare dso_local i32 @simdisk_detach(%struct.simdisk*) #1

declare dso_local i32 @del_gendisk(i64) #1

declare dso_local i32 @blk_cleanup_queue(i64) #1

declare dso_local i32 @remove_proc_entry(i8*, %struct.proc_dir_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
