; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_expression_get_vector_item_type.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_expression_get_vector_item_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_expression = type { %struct.tl_token* }
%struct.tl_token = type { i8*, %struct.tl_token* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tl_expression_get_vector_item_type(%struct.tl_expression* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tl_expression*, align 8
  %4 = alloca %struct.tl_token*, align 8
  store %struct.tl_expression* %0, %struct.tl_expression** %3, align 8
  %5 = load %struct.tl_expression*, %struct.tl_expression** %3, align 8
  %6 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %5, i32 0, i32 0
  %7 = load %struct.tl_token*, %struct.tl_token** %6, align 8
  %8 = icmp eq %struct.tl_token* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %30

10:                                               ; preds = %1
  %11 = load %struct.tl_expression*, %struct.tl_expression** %3, align 8
  %12 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %11, i32 0, i32 0
  %13 = load %struct.tl_token*, %struct.tl_token** %12, align 8
  store %struct.tl_token* %13, %struct.tl_token** %4, align 8
  %14 = load %struct.tl_token*, %struct.tl_token** %4, align 8
  %15 = icmp eq %struct.tl_token* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i8* null, i8** %2, align 8
  br label %30

17:                                               ; preds = %10
  %18 = load %struct.tl_token*, %struct.tl_token** %4, align 8
  %19 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %18, i32 0, i32 1
  %20 = load %struct.tl_token*, %struct.tl_token** %19, align 8
  store %struct.tl_token* %20, %struct.tl_token** %4, align 8
  %21 = load %struct.tl_token*, %struct.tl_token** %4, align 8
  %22 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %21, i32 0, i32 1
  %23 = load %struct.tl_token*, %struct.tl_token** %22, align 8
  %24 = icmp ne %struct.tl_token* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i8* null, i8** %2, align 8
  br label %30

26:                                               ; preds = %17
  %27 = load %struct.tl_token*, %struct.tl_token** %4, align 8
  %28 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %2, align 8
  br label %30

30:                                               ; preds = %26, %25, %16, %9
  %31 = load i8*, i8** %2, align 8
  ret i8* %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
