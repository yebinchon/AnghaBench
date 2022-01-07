; ModuleID = '/home/carl/AnghaBench/git/extr_rerere.c_rerere_io_putstr.c'
source_filename = "/home/carl/AnghaBench/git/extr_rerere.c_rerere_io_putstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rerere_io = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.rerere_io*)* @rerere_io_putstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rerere_io_putstr(i8* %0, %struct.rerere_io* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rerere_io*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.rerere_io* %1, %struct.rerere_io** %4, align 8
  %5 = load %struct.rerere_io*, %struct.rerere_io** %4, align 8
  %6 = getelementptr inbounds %struct.rerere_io, %struct.rerere_io* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load i8*, i8** %3, align 8
  %11 = load %struct.rerere_io*, %struct.rerere_io** %4, align 8
  %12 = getelementptr inbounds %struct.rerere_io, %struct.rerere_io* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.rerere_io*, %struct.rerere_io** %4, align 8
  %15 = getelementptr inbounds %struct.rerere_io, %struct.rerere_io* %14, i32 0, i32 0
  %16 = call i32 @ferr_puts(i8* %10, i64 %13, i32* %15)
  br label %17

17:                                               ; preds = %9, %2
  ret void
}

declare dso_local i32 @ferr_puts(i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
