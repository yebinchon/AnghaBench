; ModuleID = '/home/carl/AnghaBench/linux/arch/hexagon/mm/extr_cache.c_copy_to_user_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/hexagon/mm/extr_cache.c_copy_to_user_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.page = type { i32 }

@VM_EXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copy_to_user_page(%struct.vm_area_struct* %0, %struct.page* %1, i64 %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %7, align 8
  store %struct.page* %1, %struct.page** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load i8*, i8** %10, align 8
  %14 = load i8*, i8** %11, align 8
  %15 = load i32, i32* %12, align 4
  %16 = call i32 @memcpy(i8* %13, i8* %14, i32 %15)
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @VM_EXEC, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %6
  %24 = load i8*, i8** %10, align 8
  %25 = ptrtoint i8* %24 to i64
  %26 = load i8*, i8** %10, align 8
  %27 = ptrtoint i8* %26 to i64
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = add i64 %27, %29
  %31 = call i32 @flush_icache_range(i64 %25, i64 %30)
  br label %32

32:                                               ; preds = %23, %6
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @flush_icache_range(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
