; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/lburg/extr_lburg.c_emitheader.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/lburg/extr_lburg.c_emitheader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"/*\0Agenerated at %sby %s\0A*/\0A\00", align 1
@rcsid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"static void %Pkids(NODEPTR_TYPE, int, NODEPTR_TYPE[]);\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"static void %Plabel(NODEPTR_TYPE);\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"static int %Prule(void*, int);\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @emitheader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emitheader() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @time(i32* null)
  store i32 %2, i32* %1, align 4
  %3 = call i32 @ctime(i32* %1)
  %4 = load i32, i32* @rcsid, align 4
  %5 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %3, i32 %4)
  %6 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @print(i8*, ...) #1

declare dso_local i32 @ctime(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
