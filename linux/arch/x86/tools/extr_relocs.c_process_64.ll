; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/tools/extr_relocs.c_process_64.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/tools/extr_relocs.c_process_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ELF_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @regex_init(i32 %13)
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @read_ehdr(i32* %15)
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @read_shdrs(i32* %17)
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @read_strtabs(i32* %19)
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @read_symtabs(i32* %21)
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @read_relocs(i32* %23)
  %25 = load i32, i32* @ELF_BITS, align 4
  %26 = icmp eq i32 %25, 64
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = call i32 (...) @percpu_init()
  br label %29

29:                                               ; preds = %27, %6
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 (...) @print_absolute_symbols()
  br label %48

34:                                               ; preds = %29
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 (...) @print_absolute_relocs()
  br label %48

39:                                               ; preds = %34
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call i32 (...) @print_reloc_info()
  br label %48

44:                                               ; preds = %39
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @emit_relocs(i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %42, %37, %32
  ret void
}

declare dso_local i32 @regex_init(i32) #1

declare dso_local i32 @read_ehdr(i32*) #1

declare dso_local i32 @read_shdrs(i32*) #1

declare dso_local i32 @read_strtabs(i32*) #1

declare dso_local i32 @read_symtabs(i32*) #1

declare dso_local i32 @read_relocs(i32*) #1

declare dso_local i32 @percpu_init(...) #1

declare dso_local i32 @print_absolute_symbols(...) #1

declare dso_local i32 @print_absolute_relocs(...) #1

declare dso_local i32 @print_reloc_info(...) #1

declare dso_local i32 @emit_relocs(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
