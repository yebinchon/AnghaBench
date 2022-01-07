; ModuleID = '/home/carl/AnghaBench/git/extr_imap-send.c_parse_capability.c'
source_filename = "/home/carl/AnghaBench/git/extr_imap-send.c_parse_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imap = type { i32, i32 }

@cap_list = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imap*, i8*)* @parse_capability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_capability(%struct.imap* %0, i8* %1) #0 {
  %3 = alloca %struct.imap*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.imap* %0, %struct.imap** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.imap*, %struct.imap** %3, align 8
  %8 = getelementptr inbounds %struct.imap, %struct.imap* %7, i32 0, i32 0
  store i32 -2147483648, i32* %8, align 4
  br label %9

9:                                                ; preds = %38, %2
  %10 = call i8* @next_arg(i8** %4)
  store i8* %10, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %39

12:                                               ; preds = %9
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %35, %12
  %14 = load i32, i32* %6, align 4
  %15 = load i32*, i32** @cap_list, align 8
  %16 = call i32 @ARRAY_SIZE(i32* %15)
  %17 = icmp ult i32 %14, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %13
  %19 = load i32*, i32** @cap_list, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @strcmp(i32 %23, i8* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %6, align 4
  %29 = shl i32 1, %28
  %30 = load %struct.imap*, %struct.imap** %3, align 8
  %31 = getelementptr inbounds %struct.imap, %struct.imap* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %27, %18
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %6, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %13

38:                                               ; preds = %13
  br label %9

39:                                               ; preds = %9
  %40 = load %struct.imap*, %struct.imap** %3, align 8
  %41 = getelementptr inbounds %struct.imap, %struct.imap* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.imap*, %struct.imap** %3, align 8
  %44 = getelementptr inbounds %struct.imap, %struct.imap* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  ret void
}

declare dso_local i8* @next_arg(i8**) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
