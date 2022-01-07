; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_shared.c_hc_path_create.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_shared.c_hc_path_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hc_path_create(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 @hc_path_exist(i8* %5)
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = load i32, i32* @O_WRONLY, align 4
  %12 = load i32, i32* @O_CREAT, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @O_TRUNC, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @S_IRUSR, align 4
  %17 = load i32, i32* @S_IWUSR, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @open(i8* %10, i32 %15, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %28

23:                                               ; preds = %9
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @close(i32 %24)
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @unlink(i8* %26)
  store i32 1, i32* %2, align 4
  br label %28

28:                                               ; preds = %23, %22, %8
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @hc_path_exist(i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
