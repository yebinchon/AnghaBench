; ModuleID = '/home/carl/AnghaBench/git/extr_imap-send.c_socket_write.c'
source_filename = "/home/carl/AnghaBench/git/extr_imap-send.c_socket_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imap_socket = type { i32*, i64 }

@.str = private unnamed_addr constant [6 x i8] c"write\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imap_socket*, i8*, i32)* @socket_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socket_write(%struct.imap_socket* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.imap_socket*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
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
  %18 = call i32 @SSL_write(i64 %15, i8* %16, i32 %17)
  store i32 %18, i32* %7, align 4
  br label %28

19:                                               ; preds = %3
  %20 = load %struct.imap_socket*, %struct.imap_socket** %4, align 8
  %21 = getelementptr inbounds %struct.imap_socket, %struct.imap_socket* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @write_in_full(i32 %24, i8* %25, i32 %26)
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %19, %12
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %28
  %33 = load %struct.imap_socket*, %struct.imap_socket** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @socket_perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.imap_socket* %33, i32 %34)
  %36 = load %struct.imap_socket*, %struct.imap_socket** %4, align 8
  %37 = getelementptr inbounds %struct.imap_socket, %struct.imap_socket* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @close(i32 %40)
  %42 = load %struct.imap_socket*, %struct.imap_socket** %4, align 8
  %43 = getelementptr inbounds %struct.imap_socket, %struct.imap_socket* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @close(i32 %46)
  %48 = load %struct.imap_socket*, %struct.imap_socket** %4, align 8
  %49 = getelementptr inbounds %struct.imap_socket, %struct.imap_socket* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  store i32 -1, i32* %51, align 4
  %52 = load %struct.imap_socket*, %struct.imap_socket** %4, align 8
  %53 = getelementptr inbounds %struct.imap_socket, %struct.imap_socket* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 -1, i32* %55, align 4
  br label %56

56:                                               ; preds = %32, %28
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @SSL_write(i64, i8*, i32) #1

declare dso_local i32 @write_in_full(i32, i8*, i32) #1

declare dso_local i32 @socket_perror(i8*, %struct.imap_socket*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
