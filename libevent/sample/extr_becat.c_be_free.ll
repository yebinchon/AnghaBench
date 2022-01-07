; ModuleID = '/home/carl/AnghaBench/libevent/sample/extr_becat.c_be_free.c'
source_filename = "/home/carl/AnghaBench/libevent/sample/extr_becat.c_be_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Freeing bufferevent with fd=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent**)* @be_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_free(%struct.bufferevent** %0) #0 {
  %2 = alloca %struct.bufferevent**, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bufferevent*, align 8
  store %struct.bufferevent** %0, %struct.bufferevent*** %2, align 8
  %5 = load %struct.bufferevent**, %struct.bufferevent*** %2, align 8
  %6 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  store %struct.bufferevent* %6, %struct.bufferevent** %4, align 8
  %7 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %8 = icmp ne %struct.bufferevent* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %18

10:                                               ; preds = %1
  %11 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %12 = call i32 @bufferevent_getfd(%struct.bufferevent* %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %16 = call i32 @bufferevent_free(%struct.bufferevent* %15)
  %17 = load %struct.bufferevent**, %struct.bufferevent*** %2, align 8
  store %struct.bufferevent* null, %struct.bufferevent** %17, align 8
  br label %18

18:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @bufferevent_getfd(%struct.bufferevent*) #1

declare dso_local i32 @info(i8*, i32) #1

declare dso_local i32 @bufferevent_free(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
