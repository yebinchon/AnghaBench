; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_expression_is_polymorhic.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_expression_is_polymorhic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_expression = type { %struct.tl_token* }
%struct.tl_token = type { %struct.tl_token* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_expression_is_polymorhic(%struct.tl_expression* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tl_expression*, align 8
  %4 = alloca %struct.tl_token*, align 8
  store %struct.tl_expression* %0, %struct.tl_expression** %3, align 8
  %5 = load %struct.tl_expression*, %struct.tl_expression** %3, align 8
  %6 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %5, i32 0, i32 0
  %7 = load %struct.tl_token*, %struct.tl_token** %6, align 8
  store %struct.tl_token* %7, %struct.tl_token** %4, align 8
  %8 = load %struct.tl_token*, %struct.tl_token** %4, align 8
  %9 = icmp eq %struct.tl_token* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %37

11:                                               ; preds = %1
  %12 = load %struct.tl_token*, %struct.tl_token** %4, align 8
  %13 = call i32 @tl_token_is_type_name(%struct.tl_token* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %37

16:                                               ; preds = %11
  %17 = load %struct.tl_token*, %struct.tl_token** %4, align 8
  %18 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %17, i32 0, i32 0
  %19 = load %struct.tl_token*, %struct.tl_token** %18, align 8
  store %struct.tl_token* %19, %struct.tl_token** %4, align 8
  %20 = load %struct.tl_token*, %struct.tl_token** %4, align 8
  %21 = icmp eq %struct.tl_token* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %37

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %32, %23
  %25 = load %struct.tl_token*, %struct.tl_token** %4, align 8
  %26 = icmp ne %struct.tl_token* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load %struct.tl_token*, %struct.tl_token** %4, align 8
  %29 = call i32 @tl_token_is_variable_type(%struct.tl_token* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %37

32:                                               ; preds = %27
  %33 = load %struct.tl_token*, %struct.tl_token** %4, align 8
  %34 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %33, i32 0, i32 0
  %35 = load %struct.tl_token*, %struct.tl_token** %34, align 8
  store %struct.tl_token* %35, %struct.tl_token** %4, align 8
  br label %24

36:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %31, %22, %15, %10
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @tl_token_is_type_name(%struct.tl_token*) #1

declare dso_local i32 @tl_token_is_variable_type(%struct.tl_token*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
