; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_remote.c_cmd_add.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_remote.c_cmd_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opts = type { i32, i8** }

@.str = private unnamed_addr constant [35 x i8] c"you need to specify a name and URL\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"could not create remote\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.opts*)* @cmd_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_add(i32* %0, %struct.opts* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.opts* %1, %struct.opts** %4, align 8
  store i32* null, i32** %7, align 8
  %8 = load %struct.opts*, %struct.opts** %4, align 8
  %9 = getelementptr inbounds %struct.opts, %struct.opts* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 2
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 @usage(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32* null)
  br label %14

14:                                               ; preds = %12, %2
  %15 = load %struct.opts*, %struct.opts** %4, align 8
  %16 = getelementptr inbounds %struct.opts, %struct.opts* %15, i32 0, i32 1
  %17 = load i8**, i8*** %16, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %5, align 8
  %20 = load %struct.opts*, %struct.opts** %4, align 8
  %21 = getelementptr inbounds %struct.opts, %struct.opts* %20, i32 0, i32 1
  %22 = load i8**, i8*** %21, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %6, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @git_remote_create(i32** %7, i32* %25, i8* %26, i8* %27)
  %29 = call i32 @check_lg2(i32 %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32* null)
  ret i32 0
}

declare dso_local i32 @usage(i8*, i32*) #1

declare dso_local i32 @check_lg2(i32, i8*, i32*) #1

declare dso_local i32 @git_remote_create(i32**, i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
