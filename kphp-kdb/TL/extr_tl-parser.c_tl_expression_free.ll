; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_expression_free.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_expression_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_expression = type { i32*, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tl_expression*)* @tl_expression_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tl_expression_free(%struct.tl_expression* %0) #0 {
  %2 = alloca %struct.tl_expression*, align 8
  store %struct.tl_expression* %0, %struct.tl_expression** %2, align 8
  %3 = load %struct.tl_expression*, %struct.tl_expression** %2, align 8
  %4 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %3, i32 0, i32 3
  %5 = call i32 @cstr_free(i32* %4)
  %6 = load %struct.tl_expression*, %struct.tl_expression** %2, align 8
  %7 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %6, i32 0, i32 2
  %8 = call i32 @cstr_free(i32* %7)
  %9 = load %struct.tl_expression*, %struct.tl_expression** %2, align 8
  %10 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @tl_list_token_free(i32* %11)
  %13 = load %struct.tl_expression*, %struct.tl_expression** %2, align 8
  %14 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %13, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = load %struct.tl_expression*, %struct.tl_expression** %2, align 8
  %16 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @tl_list_token_free(i32* %17)
  %19 = load %struct.tl_expression*, %struct.tl_expression** %2, align 8
  %20 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  %21 = load %struct.tl_expression*, %struct.tl_expression** %2, align 8
  %22 = call i32 @zfree(%struct.tl_expression* %21, i32 24)
  ret void
}

declare dso_local i32 @cstr_free(i32*) #1

declare dso_local i32 @tl_list_token_free(i32*) #1

declare dso_local i32 @zfree(%struct.tl_expression*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
