; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar7/files/drivers/mtd/extr_titanpart.c_titan_parse_env_address.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar7/files/drivers/mtd/extr_titanpart.c_titan_parse_env_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"titan: invalid env name, %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"titan: Couldn't tokenize %s start,end.\0A\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"titan: Unable to convert :%s: :%s: into start,end values.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @titan_parse_env_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @titan_parse_env_address(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [30 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i8* @prom_getenv(i8* %13)
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %18)
  store i32 -1, i32* %4, align 4
  br label %63

20:                                               ; preds = %3
  %21 = getelementptr inbounds [30 x i8], [30 x i8]* %8, i64 0, i64 0
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @strncpy(i8* %21, i8* %22, i32 30)
  %24 = getelementptr inbounds [30 x i8], [30 x i8]* %8, i64 0, i64 29
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds [30 x i8], [30 x i8]* %8, i64 0, i64 0
  store i8* %25, i8** %12, align 8
  %26 = call i8* @strsep(i8** %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %26, i8** %10, align 8
  %27 = call i8* @strsep(i8** %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %27, i8** %11, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %20
  %31 = load i8*, i8** %11, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30, %20
  %34 = getelementptr inbounds [30 x i8], [30 x i8]* %8, i64 0, i64 0
  %35 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  store i32 -1, i32* %4, align 4
  br label %63

36:                                               ; preds = %30
  %37 = load i8*, i8** %10, align 8
  %38 = call i64 @simple_strtol(i8* %37, i32* null, i32 0)
  %39 = trunc i64 %38 to i32
  %40 = load i32*, i32** %6, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i8*, i8** %11, align 8
  %42 = call i64 @simple_strtol(i8* %41, i32* null, i32 0)
  %43 = trunc i64 %42 to i32
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %36
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48, %36
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds [30 x i8], [30 x i8]* %8, i64 0, i64 0
  %55 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i8* %53, i8* %54)
  store i32 -1, i32* %4, align 4
  br label %63

56:                                               ; preds = %48
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 268435455
  store i32 %59, i32* %57, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 268435455
  store i32 %62, i32* %60, align 4
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %56, %52, %33, %17
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i8* @prom_getenv(i8*) #1

declare dso_local i32 @printk(i8*, i8*, ...) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @simple_strtol(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
