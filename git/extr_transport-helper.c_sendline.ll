; ModuleID = '/home/carl/AnghaBench/git/extr_transport-helper.c_sendline.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport-helper.c_sendline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.helper_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.strbuf = type { i8*, i32 }

@debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Debug: Remote helper: -> %s\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"full write to remote helper failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.helper_data*, %struct.strbuf*)* @sendline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sendline(%struct.helper_data* %0, %struct.strbuf* %1) #0 {
  %3 = alloca %struct.helper_data*, align 8
  %4 = alloca %struct.strbuf*, align 8
  store %struct.helper_data* %0, %struct.helper_data** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  %5 = load i64, i64* @debug, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load i32, i32* @stderr, align 4
  %9 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %10 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @fprintf(i32 %8, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %11)
  br label %13

13:                                               ; preds = %7, %2
  %14 = load %struct.helper_data*, %struct.helper_data** %3, align 8
  %15 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %20 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %23 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @write_in_full(i32 %18, i8* %21, i32 %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %13
  %28 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i32 @die_errno(i32 %28)
  br label %30

30:                                               ; preds = %27, %13
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i64 @write_in_full(i32, i8*, i32) #1

declare dso_local i32 @die_errno(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
