; ModuleID = '/home/carl/AnghaBench/libuv/samples/socks5-proxy/extr_main.c_parse_opts.c'
source_filename = "/home/carl/AnghaBench/libuv/samples/socks5-proxy/extr_main.c_parse_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"b:hp:\00", align 1
@optarg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%hu\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"bad port number: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i8**)* @parse_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_opts(%struct.TYPE_3__* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  br label %8

8:                                                ; preds = %32, %3
  %9 = load i32, i32* %5, align 4
  %10 = load i8**, i8*** %6, align 8
  %11 = call i32 @getopt(i32 %9, i8** %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %7, align 4
  %12 = icmp ne i32 -1, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %30 [
    i32 98, label %15
    i32 112, label %19
  ]

15:                                               ; preds = %13
  %16 = load i32, i32* @optarg, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  br label %32

19:                                               ; preds = %13
  %20 = load i32, i32* @optarg, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = call i32 @sscanf(i32 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %22)
  %24 = icmp ne i32 1, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32, i32* @optarg, align 4
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = call i32 (...) @usage()
  br label %29

29:                                               ; preds = %25, %19
  br label %32

30:                                               ; preds = %13
  %31 = call i32 (...) @usage()
  br label %32

32:                                               ; preds = %30, %29, %15
  br label %8

33:                                               ; preds = %8
  ret void
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @sscanf(i32, i8*, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @usage(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
