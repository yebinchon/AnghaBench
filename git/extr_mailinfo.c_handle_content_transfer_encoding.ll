; ModuleID = '/home/carl/AnghaBench/git/extr_mailinfo.c_handle_content_transfer_encoding.c'
source_filename = "/home/carl/AnghaBench/git/extr_mailinfo.c_handle_content_transfer_encoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mailinfo = type { i32 }
%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"base64\00", align 1
@TE_BASE64 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"quoted-printable\00", align 1
@TE_QP = common dso_local global i32 0, align 4
@TE_DONTCARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mailinfo*, %struct.strbuf*)* @handle_content_transfer_encoding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_content_transfer_encoding(%struct.mailinfo* %0, %struct.strbuf* %1) #0 {
  %3 = alloca %struct.mailinfo*, align 8
  %4 = alloca %struct.strbuf*, align 8
  store %struct.mailinfo* %0, %struct.mailinfo** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  %5 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %6 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @strcasestr(i32 %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* @TE_BASE64, align 4
  %12 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %13 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  br label %29

14:                                               ; preds = %2
  %15 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %16 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @strcasestr(i32 %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i32, i32* @TE_QP, align 4
  %22 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %23 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %28

24:                                               ; preds = %14
  %25 = load i32, i32* @TE_DONTCARE, align 4
  %26 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %27 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %24, %20
  br label %29

29:                                               ; preds = %28, %10
  ret void
}

declare dso_local i64 @strcasestr(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
