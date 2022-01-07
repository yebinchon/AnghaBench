; ModuleID = '/home/carl/AnghaBench/ish/jit/extr_gen.c_gen_addr.c'
source_filename = "/home/carl/AnghaBench/ish/jit/extr_gen.c_gen_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gen_state = type { i32 }
%struct.modrm = type { i64, i64, i32, i64, i32 }

@reg_none = common dso_local global i64 0, align 8
@addr_none = common dso_local global i32 0, align 4
@addr = common dso_local global i32 0, align 4
@modrm_mem_si = common dso_local global i64 0, align 8
@si = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gen_addr(%struct.gen_state* %0, %struct.modrm* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.gen_state*, align 8
  %6 = alloca %struct.modrm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gen_state* %0, %struct.gen_state** %5, align 8
  store %struct.modrm* %1, %struct.modrm** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.modrm*, %struct.modrm** %6, align 8
  %10 = getelementptr inbounds %struct.modrm, %struct.modrm* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @reg_none, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %4
  %15 = load i32, i32* @addr_none, align 4
  %16 = load %struct.modrm*, %struct.modrm** %6, align 8
  %17 = getelementptr inbounds %struct.modrm, %struct.modrm* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @gg(i32 %15, i32 %18)
  br label %29

20:                                               ; preds = %4
  %21 = load i32, i32* @addr, align 4
  %22 = load %struct.modrm*, %struct.modrm** %6, align 8
  %23 = getelementptr inbounds %struct.modrm, %struct.modrm* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.modrm*, %struct.modrm** %6, align 8
  %26 = getelementptr inbounds %struct.modrm, %struct.modrm* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @gag(i32 %21, i64 %24, i32 %27)
  br label %29

29:                                               ; preds = %20, %14
  %30 = load %struct.modrm*, %struct.modrm** %6, align 8
  %31 = getelementptr inbounds %struct.modrm, %struct.modrm* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @modrm_mem_si, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = load i32, i32* @si, align 4
  %37 = load %struct.modrm*, %struct.modrm** %6, align 8
  %38 = getelementptr inbounds %struct.modrm, %struct.modrm* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = mul nsw i32 %39, 4
  %41 = sext i32 %40 to i64
  %42 = load %struct.modrm*, %struct.modrm** %6, align 8
  %43 = getelementptr inbounds %struct.modrm, %struct.modrm* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %41, %44
  %46 = call i32 @ga(i32 %36, i64 %45)
  br label %47

47:                                               ; preds = %35, %29
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @g(i32 %51)
  br label %53

53:                                               ; preds = %50, %47
  ret i32 1
}

declare dso_local i32 @gg(i32, i32) #1

declare dso_local i32 @gag(i32, i64, i32) #1

declare dso_local i32 @ga(i32, i64) #1

declare dso_local i32 @g(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
