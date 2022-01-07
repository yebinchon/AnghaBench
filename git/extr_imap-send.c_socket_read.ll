; ModuleID = '/home/carl/AnghaBench/git/extr_imap-send.c_socket_read.c'
source_filename = "/home/carl/AnghaBench/git/extr_imap-send.c_socket_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imap_socket = type { i32*, i64 }

@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imap_socket*, i8*, i32)* @socket_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socket_read(%struct.imap_socket* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.imap_socket*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.imap_socket* %0, %struct.imap_socket** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.imap_socket*, %struct.imap_socket** %4, align 8
  %9 = getelementptr inbounds %struct.imap_socket, %struct.imap_socket* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load %struct.imap_socket*, %struct.imap_socket** %4, align 8
  %14 = getelementptr inbounds %struct.imap_socket, %struct.imap_socket* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @SSL_read(i64 %15, i8* %16, i32 %17)
  store i64 %18, i64* %7, align 8
  br label %28

19:                                               ; preds = %3
  %20 = load %struct.imap_socket*, %struct.imap_socket** %4, align 8
  %21 = getelementptr inbounds %struct.imap_socket, %struct.imap_socket* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @xread(i32 %24, i8* %25, i32 %26)
  store i64 %27, i64* %7, align 8
  br label %28

28:                                               ; preds = %19, %12
  %29 = load i64, i64* %7, align 8
  %30 = icmp sle i64 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %28
  %32 = load %struct.imap_socket*, %struct.imap_socket** %4, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @socket_perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.imap_socket* %32, i64 %33)
  %35 = load %struct.imap_socket*, %struct.imap_socket** %4, align 8
  %36 = getelementptr inbounds %struct.imap_socket, %struct.imap_socket* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @close(i32 %39)
  %41 = load %struct.imap_socket*, %struct.imap_socket** %4, align 8
  %42 = getelementptr inbounds %struct.imap_socket, %struct.imap_socket* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @close(i32 %45)
  %47 = load %struct.imap_socket*, %struct.imap_socket** %4, align 8
  %48 = getelementptr inbounds %struct.imap_socket, %struct.imap_socket* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 -1, i32* %50, align 4
  %51 = load %struct.imap_socket*, %struct.imap_socket** %4, align 8
  %52 = getelementptr inbounds %struct.imap_socket, %struct.imap_socket* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 -1, i32* %54, align 4
  br label %55

55:                                               ; preds = %31, %28
  %56 = load i64, i64* %7, align 8
  %57 = trunc i64 %56 to i32
  ret i32 %57
}

declare dso_local i64 @SSL_read(i64, i8*, i32) #1

declare dso_local i64 @xread(i32, i8*, i32) #1

declare dso_local i32 @socket_perror(i8*, %struct.imap_socket*, i64) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
