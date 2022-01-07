; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv_dtoa.c_nrv_alloc.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv_dtoa.c_nrv_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtoa_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dtoa_context*, i8*, i8**, i32)* @nrv_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @nrv_alloc(%struct.dtoa_context* %0, i8* %1, i8** %2, i32 %3) #0 {
  %5 = alloca %struct.dtoa_context*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.dtoa_context* %0, %struct.dtoa_context** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.dtoa_context*, %struct.dtoa_context** %5, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call i8* @rv_alloc(%struct.dtoa_context* %11, i32 %12)
  store i8* %13, i8** %9, align 8
  store i8* %13, i8** %10, align 8
  br label %14

14:                                               ; preds = %20, %4
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %6, align 8
  %17 = load i8, i8* %15, align 1
  %18 = load i8*, i8** %10, align 8
  store i8 %17, i8* %18, align 1
  %19 = icmp ne i8 %17, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i8*, i8** %10, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %10, align 8
  br label %14

23:                                               ; preds = %14
  %24 = load i8**, i8*** %7, align 8
  %25 = icmp ne i8** %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i8*, i8** %10, align 8
  %28 = load i8**, i8*** %7, align 8
  store i8* %27, i8** %28, align 8
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i8*, i8** %9, align 8
  ret i8* %30
}

declare dso_local i8* @rv_alloc(%struct.dtoa_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
