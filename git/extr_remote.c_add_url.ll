; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_add_url.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_add_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.remote = type { i8**, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.remote*, i8*)* @add_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_url(%struct.remote* %0, i8* %1) #0 {
  %3 = alloca %struct.remote*, align 8
  %4 = alloca i8*, align 8
  store %struct.remote* %0, %struct.remote** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.remote*, %struct.remote** %3, align 8
  %6 = getelementptr inbounds %struct.remote, %struct.remote* %5, i32 0, i32 0
  %7 = load i8**, i8*** %6, align 8
  %8 = load %struct.remote*, %struct.remote** %3, align 8
  %9 = getelementptr inbounds %struct.remote, %struct.remote* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, 1
  %12 = load %struct.remote*, %struct.remote** %3, align 8
  %13 = getelementptr inbounds %struct.remote, %struct.remote* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @ALLOC_GROW(i8** %7, i64 %11, i32 %14)
  %16 = load i8*, i8** %4, align 8
  %17 = load %struct.remote*, %struct.remote** %3, align 8
  %18 = getelementptr inbounds %struct.remote, %struct.remote* %17, i32 0, i32 0
  %19 = load i8**, i8*** %18, align 8
  %20 = load %struct.remote*, %struct.remote** %3, align 8
  %21 = getelementptr inbounds %struct.remote, %struct.remote* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %21, align 8
  %24 = getelementptr inbounds i8*, i8** %19, i64 %22
  store i8* %16, i8** %24, align 8
  ret void
}

declare dso_local i32 @ALLOC_GROW(i8**, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
