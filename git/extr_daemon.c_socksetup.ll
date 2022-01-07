; ModuleID = '/home/carl/AnghaBench/git/extr_daemon.c_socksetup.c'
source_filename = "/home/carl/AnghaBench/git/extr_daemon.c_socksetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.socketlist = type { i32 }

@.str = private unnamed_addr constant [61 x i8] c"unable to allocate any listen sockets for host %s on port %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.string_list*, i32, %struct.socketlist*)* @socksetup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @socksetup(%struct.string_list* %0, i32 %1, %struct.socketlist* %2) #0 {
  %4 = alloca %struct.string_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.socketlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.string_list* %0, %struct.string_list** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.socketlist* %2, %struct.socketlist** %6, align 8
  %9 = load %struct.string_list*, %struct.string_list** %4, align 8
  %10 = getelementptr inbounds %struct.string_list, %struct.string_list* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.socketlist*, %struct.socketlist** %6, align 8
  %16 = call i32 @setup_named_sock(i32* null, i32 %14, %struct.socketlist* %15)
  br label %54

17:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %50, %17
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.string_list*, %struct.string_list** %4, align 8
  %21 = getelementptr inbounds %struct.string_list, %struct.string_list* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %53

24:                                               ; preds = %18
  %25 = load %struct.string_list*, %struct.string_list** %4, align 8
  %26 = getelementptr inbounds %struct.string_list, %struct.string_list* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.socketlist*, %struct.socketlist** %6, align 8
  %35 = call i32 @setup_named_sock(i32* %32, i32 %33, %struct.socketlist* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %24
  %39 = load %struct.string_list*, %struct.string_list** %4, align 8
  %40 = getelementptr inbounds %struct.string_list, %struct.string_list* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @logerror(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32* %46, i32 %47)
  br label %49

49:                                               ; preds = %38, %24
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %18

53:                                               ; preds = %18
  br label %54

54:                                               ; preds = %53, %13
  ret void
}

declare dso_local i32 @setup_named_sock(i32*, i32, %struct.socketlist*) #1

declare dso_local i32 @logerror(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
