; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_tls.c_fill_user_desc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_tls.c_fill_user_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_desc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.desc_struct = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.user_desc*, i32, %struct.desc_struct*)* @fill_user_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_user_desc(%struct.user_desc* %0, i32 %1, %struct.desc_struct* %2) #0 {
  %4 = alloca %struct.user_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.desc_struct*, align 8
  store %struct.user_desc* %0, %struct.user_desc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.desc_struct* %2, %struct.desc_struct** %6, align 8
  %7 = load %struct.user_desc*, %struct.user_desc** %4, align 8
  %8 = call i32 @memset(%struct.user_desc* %7, i32 0, i32 40)
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.user_desc*, %struct.user_desc** %4, align 8
  %11 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.desc_struct*, %struct.desc_struct** %6, align 8
  %13 = call i32 @get_desc_base(%struct.desc_struct* %12)
  %14 = load %struct.user_desc*, %struct.user_desc** %4, align 8
  %15 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %14, i32 0, i32 9
  store i32 %13, i32* %15, align 4
  %16 = load %struct.desc_struct*, %struct.desc_struct** %6, align 8
  %17 = call i32 @get_desc_limit(%struct.desc_struct* %16)
  %18 = load %struct.user_desc*, %struct.user_desc** %4, align 8
  %19 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %18, i32 0, i32 8
  store i32 %17, i32* %19, align 4
  %20 = load %struct.desc_struct*, %struct.desc_struct** %6, align 8
  %21 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.user_desc*, %struct.user_desc** %4, align 8
  %24 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 4
  %25 = load %struct.desc_struct*, %struct.desc_struct** %6, align 8
  %26 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 2
  %29 = load %struct.user_desc*, %struct.user_desc** %4, align 8
  %30 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.desc_struct*, %struct.desc_struct** %6, align 8
  %32 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 2
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = load %struct.user_desc*, %struct.user_desc** %4, align 8
  %39 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.desc_struct*, %struct.desc_struct** %6, align 8
  %41 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.user_desc*, %struct.user_desc** %4, align 8
  %44 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 4
  %45 = load %struct.desc_struct*, %struct.desc_struct** %6, align 8
  %46 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = load %struct.user_desc*, %struct.user_desc** %4, align 8
  %52 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.desc_struct*, %struct.desc_struct** %6, align 8
  %54 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.user_desc*, %struct.user_desc** %4, align 8
  %57 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 4
  ret void
}

declare dso_local i32 @memset(%struct.user_desc*, i32, i32) #1

declare dso_local i32 @get_desc_base(%struct.desc_struct*) #1

declare dso_local i32 @get_desc_limit(%struct.desc_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
