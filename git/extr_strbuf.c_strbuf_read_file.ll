; ModuleID = '/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_read_file.c'
source_filename = "/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_read_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strbuf_read_file(%struct.strbuf* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* @O_RDONLY, align 4
  %13 = call i32 @open(i8* %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %31

17:                                               ; preds = %3
  %18 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @strbuf_read(%struct.strbuf* %18, i32 %19, i64 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* @errno, align 4
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @close(i32 %23)
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %31

29:                                               ; preds = %17
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %29, %27, %16
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @strbuf_read(%struct.strbuf*, i32, i64) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
