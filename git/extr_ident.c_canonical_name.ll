; ModuleID = '/home/carl/AnghaBench/git/extr_ident.c_canonical_name.c'
source_filename = "/home/carl/AnghaBench/git/extr_ident.c_canonical_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.addrinfo = type { i64, i32 }

@AI_CANONNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.strbuf*)* @canonical_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @canonical_name(i8* %0, %struct.strbuf* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.addrinfo, align 8
  %7 = alloca %struct.addrinfo*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  store i32 -1, i32* %5, align 4
  %8 = call i32 @memset(%struct.addrinfo* %6, i8 signext 0, i32 16)
  %9 = load i32, i32* @AI_CANONNAME, align 4
  %10 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 1
  store i32 %9, i32* %10, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @getaddrinfo(i8* %11, i32* null, %struct.addrinfo* %6, %struct.addrinfo** %7)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %37, label %14

14:                                               ; preds = %2
  %15 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %16 = icmp ne %struct.addrinfo* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %14
  %18 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %19 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %17
  %23 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %24 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @strchr(i64 %25, i8 signext 46)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %30 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %31 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @strbuf_addstr(%struct.strbuf* %29, i64 %32)
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %28, %22, %17, %14
  %35 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %36 = call i32 @freeaddrinfo(%struct.addrinfo* %35)
  br label %37

37:                                               ; preds = %34, %2
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @memset(%struct.addrinfo*, i8 signext, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i32*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i64 @strchr(i64, i8 signext) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i64) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
