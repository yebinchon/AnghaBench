; ModuleID = '/home/carl/AnghaBench/ish/tools/extr_vdso-dump.c_main.c'
source_filename = "/home/carl/AnghaBench/ish/tools/extr_vdso-dump.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AT_SYSINFO_EHDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"libvdso.so\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"fopen libvdso.so\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  %4 = load i32, i32* @AT_SYSINFO_EHDR, align 4
  %5 = call i64 @getauxval(i32 %4)
  %6 = inttoptr i64 %5 to i8*
  store i8* %6, i8** %2, align 8
  %7 = call i32* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %16

12:                                               ; preds = %0
  %13 = load i8*, i8** %2, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @fwrite(i8* %13, i32 8192, i32 1, i32* %14)
  br label %16

16:                                               ; preds = %12, %10
  %17 = load i32, i32* %1, align 4
  ret i32 %17
}

declare dso_local i64 @getauxval(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
