; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/cpp/extr_cpp.c_main.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/cpp/extr_cpp.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZ = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@curtime = common dso_local global i32 0, align 4
@nerrs = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* @BUFSIZ, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %8, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %9, align 8
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 @setbuf(i32 %14, i8* %13)
  %16 = call i32 @time(i32* null)
  store i32 %16, i32* %7, align 4
  %17 = call i32 @ctime(i32* %7)
  store i32 %17, i32* @curtime, align 4
  %18 = call i32 @maketokenrow(i32 3, i32* %6)
  %19 = call i32 (...) @expandlex()
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = call i32 @setup(i32 %20, i8** %21)
  %23 = call i32 (...) @fixlex()
  %24 = call i32 (...) @iniths()
  %25 = call i32 (...) @genline()
  %26 = call i32 @process(i32* %6)
  %27 = call i32 (...) @flushout()
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 @fflush(i32 %28)
  %30 = load i64, i64* @nerrs, align 8
  %31 = icmp sgt i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @exit(i32 %32) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @setbuf(i32, i8*) #2

declare dso_local i32 @time(i32*) #2

declare dso_local i32 @ctime(i32*) #2

declare dso_local i32 @maketokenrow(i32, i32*) #2

declare dso_local i32 @expandlex(...) #2

declare dso_local i32 @setup(i32, i8**) #2

declare dso_local i32 @fixlex(...) #2

declare dso_local i32 @iniths(...) #2

declare dso_local i32 @genline(...) #2

declare dso_local i32 @process(i32*) #2

declare dso_local i32 @flushout(...) #2

declare dso_local i32 @fflush(i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
