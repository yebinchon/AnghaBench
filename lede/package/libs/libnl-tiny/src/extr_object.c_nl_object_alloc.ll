; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_object.c_nl_object_alloc.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_object.c_nl_object_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_object = type { i32, %struct.nl_object_ops*, i32 }
%struct.nl_object_ops = type { i32, i32 (%struct.nl_object.0*)* }
%struct.nl_object.0 = type opaque

@.str = private unnamed_addr constant [25 x i8] c"Allocated new object %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nl_object* @nl_object_alloc(%struct.nl_object_ops* %0) #0 {
  %2 = alloca %struct.nl_object*, align 8
  %3 = alloca %struct.nl_object_ops*, align 8
  %4 = alloca %struct.nl_object*, align 8
  store %struct.nl_object_ops* %0, %struct.nl_object_ops** %3, align 8
  %5 = load %struct.nl_object_ops*, %struct.nl_object_ops** %3, align 8
  %6 = getelementptr inbounds %struct.nl_object_ops, %struct.nl_object_ops* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = sext i32 %7 to i64
  %9 = icmp ult i64 %8, 24
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 (...) @BUG()
  br label %12

12:                                               ; preds = %10, %1
  %13 = load %struct.nl_object_ops*, %struct.nl_object_ops** %3, align 8
  %14 = getelementptr inbounds %struct.nl_object_ops, %struct.nl_object_ops* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.nl_object* @calloc(i32 1, i32 %15)
  store %struct.nl_object* %16, %struct.nl_object** %4, align 8
  %17 = load %struct.nl_object*, %struct.nl_object** %4, align 8
  %18 = icmp ne %struct.nl_object* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  store %struct.nl_object* null, %struct.nl_object** %2, align 8
  br label %44

20:                                               ; preds = %12
  %21 = load %struct.nl_object*, %struct.nl_object** %4, align 8
  %22 = getelementptr inbounds %struct.nl_object, %struct.nl_object* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load %struct.nl_object*, %struct.nl_object** %4, align 8
  %24 = getelementptr inbounds %struct.nl_object, %struct.nl_object* %23, i32 0, i32 2
  %25 = call i32 @nl_init_list_head(i32* %24)
  %26 = load %struct.nl_object_ops*, %struct.nl_object_ops** %3, align 8
  %27 = load %struct.nl_object*, %struct.nl_object** %4, align 8
  %28 = getelementptr inbounds %struct.nl_object, %struct.nl_object* %27, i32 0, i32 1
  store %struct.nl_object_ops* %26, %struct.nl_object_ops** %28, align 8
  %29 = load %struct.nl_object_ops*, %struct.nl_object_ops** %3, align 8
  %30 = getelementptr inbounds %struct.nl_object_ops, %struct.nl_object_ops* %29, i32 0, i32 1
  %31 = load i32 (%struct.nl_object.0*)*, i32 (%struct.nl_object.0*)** %30, align 8
  %32 = icmp ne i32 (%struct.nl_object.0*)* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %20
  %34 = load %struct.nl_object_ops*, %struct.nl_object_ops** %3, align 8
  %35 = getelementptr inbounds %struct.nl_object_ops, %struct.nl_object_ops* %34, i32 0, i32 1
  %36 = load i32 (%struct.nl_object.0*)*, i32 (%struct.nl_object.0*)** %35, align 8
  %37 = load %struct.nl_object*, %struct.nl_object** %4, align 8
  %38 = bitcast %struct.nl_object* %37 to %struct.nl_object.0*
  %39 = call i32 %36(%struct.nl_object.0* %38)
  br label %40

40:                                               ; preds = %33, %20
  %41 = load %struct.nl_object*, %struct.nl_object** %4, align 8
  %42 = call i32 @NL_DBG(i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.nl_object* %41)
  %43 = load %struct.nl_object*, %struct.nl_object** %4, align 8
  store %struct.nl_object* %43, %struct.nl_object** %2, align 8
  br label %44

44:                                               ; preds = %40, %19
  %45 = load %struct.nl_object*, %struct.nl_object** %2, align 8
  ret %struct.nl_object* %45
}

declare dso_local i32 @BUG(...) #1

declare dso_local %struct.nl_object* @calloc(i32, i32) #1

declare dso_local i32 @nl_init_list_head(i32*) #1

declare dso_local i32 @NL_DBG(i32, i8*, %struct.nl_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
