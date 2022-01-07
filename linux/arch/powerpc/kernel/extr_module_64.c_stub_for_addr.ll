; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_module_64.c_stub_for_addr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_module_64.c_stub_for_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.module = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.ppc64_stub_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i64, %struct.module*)* @stub_for_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stub_for_addr(%struct.TYPE_6__* %0, i64 %1, %struct.module* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.module*, align 8
  %8 = alloca %struct.ppc64_stub_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.module* %2, %struct.module** %7, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = load %struct.module*, %struct.module** %7, align 8
  %13 = getelementptr inbounds %struct.module, %struct.module* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = udiv i64 %19, 4
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %10, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = load %struct.module*, %struct.module** %7, align 8
  %24 = getelementptr inbounds %struct.module, %struct.module* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = bitcast i8* %30 to %struct.ppc64_stub_entry*
  store %struct.ppc64_stub_entry* %31, %struct.ppc64_stub_entry** %8, align 8
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %67, %3
  %33 = load %struct.ppc64_stub_entry*, %struct.ppc64_stub_entry** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ppc64_stub_entry, %struct.ppc64_stub_entry* %33, i64 %35
  %37 = getelementptr inbounds %struct.ppc64_stub_entry, %struct.ppc64_stub_entry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @stub_func_addr(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %70

41:                                               ; preds = %32
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp uge i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i64 @WARN_ON(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i64 0, i64* %4, align 8
  br label %87

49:                                               ; preds = %41
  %50 = load %struct.ppc64_stub_entry*, %struct.ppc64_stub_entry** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.ppc64_stub_entry, %struct.ppc64_stub_entry* %50, i64 %52
  %54 = getelementptr inbounds %struct.ppc64_stub_entry, %struct.ppc64_stub_entry* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @stub_func_addr(i32 %55)
  %57 = load i64, i64* %6, align 8
  %58 = call i64 @func_addr(i64 %57)
  %59 = icmp eq i64 %56, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %49
  %61 = load %struct.ppc64_stub_entry*, %struct.ppc64_stub_entry** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.ppc64_stub_entry, %struct.ppc64_stub_entry* %61, i64 %63
  %65 = ptrtoint %struct.ppc64_stub_entry* %64 to i64
  store i64 %65, i64* %4, align 8
  br label %87

66:                                               ; preds = %49
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %9, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %32

70:                                               ; preds = %32
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %72 = load %struct.ppc64_stub_entry*, %struct.ppc64_stub_entry** %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.ppc64_stub_entry, %struct.ppc64_stub_entry* %72, i64 %74
  %76 = load i64, i64* %6, align 8
  %77 = load %struct.module*, %struct.module** %7, align 8
  %78 = call i32 @create_stub(%struct.TYPE_6__* %71, %struct.ppc64_stub_entry* %75, i64 %76, %struct.module* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %70
  store i64 0, i64* %4, align 8
  br label %87

81:                                               ; preds = %70
  %82 = load %struct.ppc64_stub_entry*, %struct.ppc64_stub_entry** %8, align 8
  %83 = load i32, i32* %9, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.ppc64_stub_entry, %struct.ppc64_stub_entry* %82, i64 %84
  %86 = ptrtoint %struct.ppc64_stub_entry* %85 to i64
  store i64 %86, i64* %4, align 8
  br label %87

87:                                               ; preds = %81, %80, %60, %48
  %88 = load i64, i64* %4, align 8
  ret i64 %88
}

declare dso_local i64 @stub_func_addr(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @func_addr(i64) #1

declare dso_local i32 @create_stub(%struct.TYPE_6__*, %struct.ppc64_stub_entry*, i64, %struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
