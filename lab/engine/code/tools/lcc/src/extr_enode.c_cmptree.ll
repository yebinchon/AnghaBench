; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_enode.c_cmptree.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_enode.c_cmptree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }

@unsignedptr = common dso_local global i32 0, align 4
@unsignedtype = common dso_local global i32 0, align 4
@inttype = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (i32, %struct.TYPE_12__*, %struct.TYPE_12__*)* @cmptree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @cmptree(i32 %0, %struct.TYPE_12__* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %6, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @isarith(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %3
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @isarith(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %13
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @binary(i32 %22, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call %struct.TYPE_12__* @cast(%struct.TYPE_12__* %27, i32 %28)
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %5, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call %struct.TYPE_12__* @cast(%struct.TYPE_12__* %30, i32 %31)
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %6, align 8
  br label %57

33:                                               ; preds = %13, %3
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @compatible(i32 %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %33
  %43 = load i32, i32* @unsignedptr, align 4
  store i32 %43, i32* %7, align 4
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call %struct.TYPE_12__* @cast(%struct.TYPE_12__* %44, i32 %45)
  store %struct.TYPE_12__* %46, %struct.TYPE_12__** %5, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call %struct.TYPE_12__* @cast(%struct.TYPE_12__* %47, i32 %48)
  store %struct.TYPE_12__* %49, %struct.TYPE_12__** %6, align 8
  br label %56

50:                                               ; preds = %33
  %51 = load i32, i32* @unsignedtype, align 4
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %55 = call i32 @typeerror(i32 %52, %struct.TYPE_12__* %53, %struct.TYPE_12__* %54)
  br label %56

56:                                               ; preds = %50, %42
  br label %57

57:                                               ; preds = %56, %19
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @mkop(i32 %58, i32 %59)
  %61 = load i32, i32* @inttype, align 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %64 = call %struct.TYPE_12__* @simplify(i32 %60, i32 %61, %struct.TYPE_12__* %62, %struct.TYPE_12__* %63)
  ret %struct.TYPE_12__* %64
}

declare dso_local i64 @isarith(i32) #1

declare dso_local i32 @binary(i32, i32) #1

declare dso_local %struct.TYPE_12__* @cast(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @compatible(i32, i32) #1

declare dso_local i32 @typeerror(i32, %struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @simplify(i32, i32, %struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @mkop(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
