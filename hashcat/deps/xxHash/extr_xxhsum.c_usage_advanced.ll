; ModuleID = '/home/carl/AnghaBench/hashcat/deps/xxHash/extr_xxhsum.c_usage_advanced.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/xxHash/extr_xxhsum.c_usage_advanced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"Advanced :\0A\00", align 1
@.str.1 = private unnamed_addr constant [86 x i8] c" --little-endian : hash printed using little endian convention (default: big endian)\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c" -V, --version   : display version\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c" -h, --help      : display long help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c" -b  : benchmark mode \0A\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c" -i# : number of iterations (benchmark mode; default %i)\0A\00", align 1
@g_nbIterations = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [75 x i8] c"The following four options are useful only when verifying checksums (-c):\0A\00", align 1
@.str.8 = private unnamed_addr constant [63 x i8] c"--strict : don't print OK for each successfully verified file\0A\00", align 1
@.str.9 = private unnamed_addr constant [61 x i8] c"--status : don't output anything, status code shows success\0A\00", align 1
@.str.10 = private unnamed_addr constant [66 x i8] c"--quiet  : exit non-zero for improperly formatted checksum lines\0A\00", align 1
@.str.11 = private unnamed_addr constant [59 x i8] c"--warn   : warn about improperly formatted checksum lines\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @usage_advanced to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usage_advanced(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 @usage(i8* %3)
  %5 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %10 = load i32, i32* @g_nbIterations, align 4
  %11 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i32 %10)
  %12 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.7, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.8, i64 0, i64 0))
  %15 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.10, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.11, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @DISPLAY(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
