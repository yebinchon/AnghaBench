; ModuleID = '/home/carl/AnghaBench/git/extr_object.c_insert_obj_hash.c'
source_filename = "/home/carl/AnghaBench/git/extr_object.c_insert_obj_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object*, %struct.object**, i32)* @insert_obj_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_obj_hash(%struct.object* %0, %struct.object** %1, i32 %2) #0 {
  %4 = alloca %struct.object*, align 8
  %5 = alloca %struct.object**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.object* %0, %struct.object** %4, align 8
  store %struct.object** %1, %struct.object*** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.object*, %struct.object** %4, align 8
  %9 = getelementptr inbounds %struct.object, %struct.object* %8, i32 0, i32 0
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @hash_obj(i32* %9, i32 %10)
  store i32 %11, i32* %7, align 4
  br label %12

12:                                               ; preds = %26, %3
  %13 = load %struct.object**, %struct.object*** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.object*, %struct.object** %13, i64 %15
  %17 = load %struct.object*, %struct.object** %16, align 8
  %18 = icmp ne %struct.object* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %12
  %20 = load i32, i32* %7, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp uge i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %25, %19
  br label %12

27:                                               ; preds = %12
  %28 = load %struct.object*, %struct.object** %4, align 8
  %29 = load %struct.object**, %struct.object*** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.object*, %struct.object** %29, i64 %31
  store %struct.object* %28, %struct.object** %32, align 8
  ret void
}

declare dso_local i32 @hash_obj(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
