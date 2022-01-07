; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_set_user_object_type.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_set_user_object_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_hints_set_user_object_type = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_user_object_type(%struct.lev_hints_set_user_object_type* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lev_hints_set_user_object_type*, align 8
  %4 = alloca i32*, align 8
  store %struct.lev_hints_set_user_object_type* %0, %struct.lev_hints_set_user_object_type** %3, align 8
  %5 = load %struct.lev_hints_set_user_object_type*, %struct.lev_hints_set_user_object_type** %3, align 8
  %6 = getelementptr inbounds %struct.lev_hints_set_user_object_type, %struct.lev_hints_set_user_object_type* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i32* @conv_user_id(i32 %7)
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = load i32*, i32** %4, align 8
  %13 = load %struct.lev_hints_set_user_object_type*, %struct.lev_hints_set_user_object_type** %3, align 8
  %14 = getelementptr inbounds %struct.lev_hints_set_user_object_type, %struct.lev_hints_set_user_object_type* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = ashr i32 %15, 8
  %17 = and i32 %16, 255
  %18 = load %struct.lev_hints_set_user_object_type*, %struct.lev_hints_set_user_object_type** %3, align 8
  %19 = getelementptr inbounds %struct.lev_hints_set_user_object_type, %struct.lev_hints_set_user_object_type* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.lev_hints_set_user_object_type*, %struct.lev_hints_set_user_object_type** %3, align 8
  %22 = getelementptr inbounds %struct.lev_hints_set_user_object_type, %struct.lev_hints_set_user_object_type* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 255
  %25 = call i32 @user_set_object_type(i32* %12, i32 %17, i32 %20, i32 %24)
  store i32 %25, i32* %2, align 4
  br label %27

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %11
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32* @conv_user_id(i32) #1

declare dso_local i32 @user_set_object_type(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
