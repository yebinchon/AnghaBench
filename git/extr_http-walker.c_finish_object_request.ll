; ModuleID = '/home/carl/AnghaBench/git/extr_http-walker.c_finish_object_request.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-walker.c_finish_object_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_request = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"got %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object_request*)* @finish_object_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finish_object_request(%struct.object_request* %0) #0 {
  %2 = alloca %struct.object_request*, align 8
  store %struct.object_request* %0, %struct.object_request** %2, align 8
  %3 = load %struct.object_request*, %struct.object_request** %2, align 8
  %4 = getelementptr inbounds %struct.object_request, %struct.object_request* %3, i32 0, i32 2
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = call i64 @finish_http_object_request(%struct.TYPE_2__* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %24

9:                                                ; preds = %1
  %10 = load %struct.object_request*, %struct.object_request** %2, align 8
  %11 = getelementptr inbounds %struct.object_request, %struct.object_request* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %9
  %17 = load %struct.object_request*, %struct.object_request** %2, align 8
  %18 = getelementptr inbounds %struct.object_request, %struct.object_request* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.object_request*, %struct.object_request** %2, align 8
  %21 = getelementptr inbounds %struct.object_request, %struct.object_request* %20, i32 0, i32 0
  %22 = call i32 @oid_to_hex(i32* %21)
  %23 = call i32 @walker_say(i32 %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %8, %16, %9
  ret void
}

declare dso_local i64 @finish_http_object_request(%struct.TYPE_2__*) #1

declare dso_local i32 @walker_say(i32, i8*, i32) #1

declare dso_local i32 @oid_to_hex(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
