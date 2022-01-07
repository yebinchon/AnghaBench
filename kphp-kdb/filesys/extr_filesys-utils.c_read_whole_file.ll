; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-utils.c_read_whole_file.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-utils.c_read_whole_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Couldn't open %s for reading. %m\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"read %d bytes of %d from %s. %m\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @read_whole_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_whole_file(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* @O_RDONLY, align 4
  %11 = call i32 @open(i8* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %15)
  store i8* null, i8** %3, align 8
  br label %42

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  br label %23

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i32 [ %21, %20 ], [ 1, %22 ]
  %25 = call i8* @zmalloc(i32 %24)
  store i8* %25, i8** %7, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @read(i32 %26, i8* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @close(i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %23
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %37, i8* %38)
  store i8* null, i8** %3, align 8
  br label %42

40:                                               ; preds = %23
  %41 = load i8*, i8** %7, align 8
  store i8* %41, i8** %3, align 8
  br label %42

42:                                               ; preds = %40, %35, %14
  %43 = load i8*, i8** %3, align 8
  ret i8* %43
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local i8* @zmalloc(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
