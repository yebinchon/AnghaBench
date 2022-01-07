; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-import-dump.c_log_x32_set.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-import-dump.c_log_x32_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_generic = type { i32, i32, i32, i32, i32, i32, i64 }

@LEV_LI_SET_ENTRY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @log_x32_set(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i8 zeroext %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca %struct.lev_generic*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i8 %6, i8* %14, align 1
  %16 = call %struct.lev_generic* @write_alloc(i32 28)
  store %struct.lev_generic* %16, %struct.lev_generic** %15, align 8
  %17 = load i64, i64* @LEV_LI_SET_ENTRY, align 8
  %18 = load i8, i8* %14, align 1
  %19 = zext i8 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = load %struct.lev_generic*, %struct.lev_generic** %15, align 8
  %22 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %21, i32 0, i32 6
  store i64 %20, i64* %22, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.lev_generic*, %struct.lev_generic** %15, align 8
  %25 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.lev_generic*, %struct.lev_generic** %15, align 8
  %28 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.lev_generic*, %struct.lev_generic** %15, align 8
  %31 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.lev_generic*, %struct.lev_generic** %15, align 8
  %34 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.lev_generic*, %struct.lev_generic** %15, align 8
  %37 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.lev_generic*, %struct.lev_generic** %15, align 8
  %40 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 4
  ret void
}

declare dso_local %struct.lev_generic* @write_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
