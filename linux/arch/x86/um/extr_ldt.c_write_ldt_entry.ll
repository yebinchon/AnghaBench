; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/um/extr_ldt.c_write_ldt_entry.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/um/extr_ldt.c_write_ldt_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_id = type { i32 }
%struct.user_desc = type { i32 }

@__NR_modify_ldt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mm_id*, i32, %struct.user_desc*, i8**, i32)* @write_ldt_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @write_ldt_entry(%struct.mm_id* %0, i32 %1, %struct.user_desc* %2, i8** %3, i32 %4) #0 {
  %6 = alloca %struct.mm_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.user_desc*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [6 x i64], align 16
  store %struct.mm_id* %0, %struct.mm_id** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.user_desc* %2, %struct.user_desc** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.mm_id*, %struct.mm_id** %6, align 8
  %15 = load %struct.user_desc*, %struct.user_desc** %8, align 8
  %16 = bitcast %struct.user_desc* %15 to i64*
  %17 = load i8**, i8*** %9, align 8
  %18 = call i64 @syscall_stub_data(%struct.mm_id* %14, i64* %16, i32 8, i8** %17, i8** %12)
  store i64 %18, i64* %11, align 8
  %19 = load i64, i64* %11, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %38, label %21

21:                                               ; preds = %5
  %22 = getelementptr inbounds [6 x i64], [6 x i64]* %13, i64 0, i64 0
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %22, align 8
  %25 = getelementptr inbounds i64, i64* %22, i64 1
  %26 = load i8*, i8** %12, align 8
  %27 = ptrtoint i8* %26 to i64
  store i64 %27, i64* %25, align 8
  %28 = getelementptr inbounds i64, i64* %25, i64 1
  store i64 4, i64* %28, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 1
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 1
  store i64 0, i64* %30, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.mm_id*, %struct.mm_id** %6, align 8
  %33 = load i32, i32* @__NR_modify_ldt, align 4
  %34 = getelementptr inbounds [6 x i64], [6 x i64]* %13, i64 0, i64 0
  %35 = load i8**, i8*** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i64 @run_syscall_stub(%struct.mm_id* %32, i32 %33, i64* %34, i32 0, i8** %35, i32 %36)
  store i64 %37, i64* %11, align 8
  br label %38

38:                                               ; preds = %21, %5
  %39 = load i64, i64* %11, align 8
  ret i64 %39
}

declare dso_local i64 @syscall_stub_data(%struct.mm_id*, i64*, i32, i8**, i8**) #1

declare dso_local i64 @run_syscall_stub(%struct.mm_id*, i32, i64*, i32, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
