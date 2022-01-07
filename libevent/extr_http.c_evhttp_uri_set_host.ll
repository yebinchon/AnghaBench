; ModuleID = '/home/carl/AnghaBench/libevent/extr_http.c_evhttp_uri_set_host.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_http.c_evhttp_uri_set_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_uri = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evhttp_uri_set_host(%struct.evhttp_uri* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evhttp_uri*, align 8
  %5 = alloca i8*, align 8
  store %struct.evhttp_uri* %0, %struct.evhttp_uri** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %37

8:                                                ; preds = %2
  %9 = load i8*, i8** %5, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 91
  br i1 %13, label %14, label %25

14:                                               ; preds = %8
  %15 = load i8*, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  %21 = call i32 @bracket_addr_ok(i8* %15, i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %40

24:                                               ; preds = %14
  br label %36

25:                                               ; preds = %8
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  %32 = call i32 @regname_ok(i8* %26, i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %40

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35, %24
  br label %37

37:                                               ; preds = %36, %2
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @URI_SET_STR_(i8* %38)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %37, %34, %23
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @bracket_addr_ok(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @regname_ok(i8*, i8*) #1

declare dso_local i32 @URI_SET_STR_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
