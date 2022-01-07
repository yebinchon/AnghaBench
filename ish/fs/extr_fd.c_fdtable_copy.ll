; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_fd.c_fdtable_copy.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_fd.c_fdtable_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdtable = type { i32, i32, %struct.TYPE_3__**, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fdtable* @fdtable_copy(%struct.fdtable* %0) #0 {
  %2 = alloca %struct.fdtable*, align 8
  %3 = alloca %struct.fdtable*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fdtable*, align 8
  %6 = alloca i32, align 4
  store %struct.fdtable* %0, %struct.fdtable** %3, align 8
  %7 = load %struct.fdtable*, %struct.fdtable** %3, align 8
  %8 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %7, i32 0, i32 1
  %9 = call i32 @lock(i32* %8)
  %10 = load %struct.fdtable*, %struct.fdtable** %3, align 8
  %11 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.fdtable* @fdtable_new(i32 %13)
  store %struct.fdtable* %14, %struct.fdtable** %5, align 8
  %15 = load %struct.fdtable*, %struct.fdtable** %5, align 8
  %16 = call i64 @IS_ERR(%struct.fdtable* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.fdtable*, %struct.fdtable** %3, align 8
  %20 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %19, i32 0, i32 1
  %21 = call i32 @unlock(i32* %20)
  %22 = load %struct.fdtable*, %struct.fdtable** %5, align 8
  store %struct.fdtable* %22, %struct.fdtable** %2, align 8
  br label %77

23:                                               ; preds = %1
  %24 = load %struct.fdtable*, %struct.fdtable** %5, align 8
  %25 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %24, i32 0, i32 3
  %26 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %25, align 8
  %27 = load %struct.fdtable*, %struct.fdtable** %3, align 8
  %28 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %27, i32 0, i32 3
  %29 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 8, %31
  %33 = trunc i64 %32 to i32
  %34 = call i32 @memcpy(%struct.TYPE_3__** %26, %struct.TYPE_3__** %29, i32 %33)
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %60, %23
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %63

39:                                               ; preds = %35
  %40 = load %struct.fdtable*, %struct.fdtable** %5, align 8
  %41 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %40, i32 0, i32 3
  %42 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %42, i64 %44
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = icmp ne %struct.TYPE_3__* %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %39
  %49 = load %struct.fdtable*, %struct.fdtable** %5, align 8
  %50 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %49, i32 0, i32 3
  %51 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %51, i64 %53
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %48, %39
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %35

63:                                               ; preds = %35
  %64 = load %struct.fdtable*, %struct.fdtable** %5, align 8
  %65 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %64, i32 0, i32 2
  %66 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %65, align 8
  %67 = load %struct.fdtable*, %struct.fdtable** %3, align 8
  %68 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %67, i32 0, i32 2
  %69 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @BITS_SIZE(i32 %70)
  %72 = call i32 @memcpy(%struct.TYPE_3__** %66, %struct.TYPE_3__** %69, i32 %71)
  %73 = load %struct.fdtable*, %struct.fdtable** %3, align 8
  %74 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %73, i32 0, i32 1
  %75 = call i32 @unlock(i32* %74)
  %76 = load %struct.fdtable*, %struct.fdtable** %5, align 8
  store %struct.fdtable* %76, %struct.fdtable** %2, align 8
  br label %77

77:                                               ; preds = %63, %18
  %78 = load %struct.fdtable*, %struct.fdtable** %2, align 8
  ret %struct.fdtable* %78
}

declare dso_local i32 @lock(i32*) #1

declare dso_local %struct.fdtable* @fdtable_new(i32) #1

declare dso_local i64 @IS_ERR(%struct.fdtable*) #1

declare dso_local i32 @unlock(i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_3__**, %struct.TYPE_3__**, i32) #1

declare dso_local i32 @BITS_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
