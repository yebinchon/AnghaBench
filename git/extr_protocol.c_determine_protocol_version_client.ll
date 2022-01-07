; ModuleID = '/home/carl/AnghaBench/git/extr_protocol.c_determine_protocol_version_client.c'
source_filename = "/home/carl/AnghaBench/git/extr_protocol.c_determine_protocol_version_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@protocol_v0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"version \00", align 1
@protocol_unknown_version = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"server is speaking an unknown protocol\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"protocol error: server explicitly said version 0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @determine_protocol_version_client(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @protocol_v0, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i8*, i8** %2, align 8
  %6 = call i64 @skip_prefix(i8* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %2)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @parse_protocol_version(i8* %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @protocol_unknown_version, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = call i32 @die(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @protocol_v0, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 @die(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %16
  br label %23

23:                                               ; preds = %22, %1
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32 @parse_protocol_version(i8*) #1

declare dso_local i32 @die(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
