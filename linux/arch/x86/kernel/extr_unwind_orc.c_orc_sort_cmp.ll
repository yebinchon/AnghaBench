; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_unwind_orc.c_orc_sort_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_unwind_orc.c_orc_sort_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orc_entry = type { i64, i32 }

@cur_orc_table = common dso_local global %struct.orc_entry* null, align 8
@cur_orc_ip_table = common dso_local global i32* null, align 8
@ORC_REG_UNDEFINED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @orc_sort_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orc_sort_cmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.orc_entry*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i64 @orc_ip(i32* %15)
  store i64 %16, i64* %9, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i64 @orc_ip(i32* %17)
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %10, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %52

23:                                               ; preds = %2
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %10, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  br label %52

28:                                               ; preds = %23
  %29 = load %struct.orc_entry*, %struct.orc_entry** @cur_orc_table, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load i32*, i32** @cur_orc_ip_table, align 8
  %32 = ptrtoint i32* %30 to i64
  %33 = ptrtoint i32* %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 4
  %36 = getelementptr inbounds %struct.orc_entry, %struct.orc_entry* %29, i64 %35
  store %struct.orc_entry* %36, %struct.orc_entry** %6, align 8
  %37 = load %struct.orc_entry*, %struct.orc_entry** %6, align 8
  %38 = getelementptr inbounds %struct.orc_entry, %struct.orc_entry* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ORC_REG_UNDEFINED, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %28
  %43 = load %struct.orc_entry*, %struct.orc_entry** %6, align 8
  %44 = getelementptr inbounds %struct.orc_entry, %struct.orc_entry* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br label %48

48:                                               ; preds = %42, %28
  %49 = phi i1 [ false, %28 ], [ %47, %42 ]
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 -1, i32 1
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %48, %27, %22
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @orc_ip(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
