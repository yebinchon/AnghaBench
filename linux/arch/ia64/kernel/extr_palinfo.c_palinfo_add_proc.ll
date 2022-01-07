; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_palinfo.c_palinfo_add_proc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_palinfo.c_palinfo_add_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.proc_dir_entry = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"cpu%d\00", align 1
@palinfo_dir = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NR_PALINFO_ENTRIES = common dso_local global i32 0, align 4
@palinfo_entries = common dso_local global %struct.TYPE_4__* null, align 8
@proc_palinfo_show = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @palinfo_add_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palinfo_add_proc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca %struct.proc_dir_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [8 x i8], align 1
  store i32 %0, i32* %3, align 4
  %8 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @sprintf(i8* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %12 = load i32, i32* @palinfo_dir, align 4
  %13 = call %struct.proc_dir_entry* @proc_mkdir(i8* %11, i32 %12)
  store %struct.proc_dir_entry* %13, %struct.proc_dir_entry** %5, align 8
  %14 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %15 = icmp ne %struct.proc_dir_entry* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %45

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %41, %19
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @NR_PALINFO_ENTRIES, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @palinfo_entries, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %36 = load i32, i32* @proc_palinfo_show, align 4
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @proc_create_single_data(i32 %34, i32 0, %struct.proc_dir_entry* %35, i32 %36, i8* %39)
  br label %41

41:                                               ; preds = %26
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %22

44:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %16
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local %struct.proc_dir_entry* @proc_mkdir(i8*, i32) #1

declare dso_local i32 @proc_create_single_data(i32, i32, %struct.proc_dir_entry*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
