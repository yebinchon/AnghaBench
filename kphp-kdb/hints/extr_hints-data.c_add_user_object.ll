; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_add_user_object.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_add_user_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_hints_add_user_object = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_user_object(%struct.lev_hints_add_user_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lev_hints_add_user_object*, align 8
  %4 = alloca i32*, align 8
  store %struct.lev_hints_add_user_object* %0, %struct.lev_hints_add_user_object** %3, align 8
  %5 = load %struct.lev_hints_add_user_object*, %struct.lev_hints_add_user_object** %3, align 8
  %6 = getelementptr inbounds %struct.lev_hints_add_user_object, %struct.lev_hints_add_user_object* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @check_text_len(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

11:                                               ; preds = %1
  %12 = load %struct.lev_hints_add_user_object*, %struct.lev_hints_add_user_object** %3, align 8
  %13 = getelementptr inbounds %struct.lev_hints_add_user_object, %struct.lev_hints_add_user_object* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32* @conv_user_id(i32 %14)
  store i32* %15, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %11
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.lev_hints_add_user_object*, %struct.lev_hints_add_user_object** %3, align 8
  %21 = getelementptr inbounds %struct.lev_hints_add_user_object, %struct.lev_hints_add_user_object* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.lev_hints_add_user_object*, %struct.lev_hints_add_user_object** %3, align 8
  %24 = getelementptr inbounds %struct.lev_hints_add_user_object, %struct.lev_hints_add_user_object* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i32*, i32, i32, ...) @user_add_object(i32* %19, i32 %22, i32 %25)
  store i32 %26, i32* %2, align 4
  br label %28

27:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %18, %10
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @check_text_len(i32) #1

declare dso_local i32* @conv_user_id(i32) #1

declare dso_local i32 @user_add_object(i32*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
