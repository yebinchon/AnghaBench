; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_tty.c_tty_ioctl.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_tty.c_tty_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.fd = type { %struct.tty* }
%struct.tty = type { i32, %struct.TYPE_7__*, i32, i32, i32, i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.tty*, i32, i8*)* }

@_ENOTTY = common dso_local global i32 0, align 4
@_EIO = common dso_local global i32 0, align 4
@_EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"tty group = %d\0A\00", align 1
@pids_lock = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_8__* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"tty group set to = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fd*, i32, i8*)* @tty_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty_ioctl(%struct.fd* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tty*, align 8
  %10 = alloca i32, align 4
  store %struct.fd* %0, %struct.fd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.fd*, %struct.fd** %5, align 8
  %12 = getelementptr inbounds %struct.fd, %struct.fd* %11, i32 0, i32 0
  %13 = load %struct.tty*, %struct.tty** %12, align 8
  store %struct.tty* %13, %struct.tty** %9, align 8
  %14 = load %struct.tty*, %struct.tty** %9, align 8
  %15 = getelementptr inbounds %struct.tty, %struct.tty* %14, i32 0, i32 0
  %16 = call i32 @lock(i32* %15)
  %17 = load %struct.tty*, %struct.tty** %9, align 8
  %18 = getelementptr inbounds %struct.tty, %struct.tty* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %3
  %22 = load %struct.tty*, %struct.tty** %9, align 8
  %23 = getelementptr inbounds %struct.tty, %struct.tty* %22, i32 0, i32 0
  %24 = call i32 @unlock(i32* %23)
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 128
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @_ENOTTY, align 4
  store i32 %28, i32* %4, align 4
  br label %148

29:                                               ; preds = %21
  %30 = load i32, i32* @_EIO, align 4
  store i32 %30, i32* %4, align 4
  br label %148

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  switch i32 %32, label %113 [
    i32 134, label %33
    i32 129, label %46
    i32 130, label %51
    i32 128, label %72
    i32 135, label %107
  ]

33:                                               ; preds = %31
  %34 = load i8*, i8** %7, align 8
  %35 = ptrtoint i8* %34 to i32
  switch i32 %35, label %43 [
    i32 133, label %36
    i32 132, label %36
    i32 131, label %42
  ]

36:                                               ; preds = %33, %33
  %37 = load %struct.tty*, %struct.tty** %9, align 8
  %38 = getelementptr inbounds %struct.tty, %struct.tty* %37, i32 0, i32 2
  store i32 0, i32* %38, align 8
  %39 = load %struct.tty*, %struct.tty** %9, align 8
  %40 = getelementptr inbounds %struct.tty, %struct.tty* %39, i32 0, i32 5
  %41 = call i32 @notify(i32* %40)
  br label %45

42:                                               ; preds = %33
  br label %45

43:                                               ; preds = %33
  %44 = load i32, i32* @_EINVAL, align 4
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %43, %42, %36
  br label %143

46:                                               ; preds = %31
  %47 = load %struct.tty*, %struct.tty** %9, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = ptrtoint i8* %48 to i32
  %50 = call i32 @tiocsctty(%struct.tty* %47, i32 %49)
  store i32 %50, i32* %8, align 4
  br label %143

51:                                               ; preds = %31
  %52 = load %struct.tty*, %struct.tty** %9, align 8
  %53 = call i32 @tty_is_current(%struct.tty* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load %struct.tty*, %struct.tty** %9, align 8
  %57 = getelementptr inbounds %struct.tty, %struct.tty* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55, %51
  %61 = load i32, i32* @_ENOTTY, align 4
  store i32 %61, i32* %8, align 4
  br label %143

62:                                               ; preds = %55
  %63 = load %struct.tty*, %struct.tty** %9, align 8
  %64 = getelementptr inbounds %struct.tty, %struct.tty* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @STRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load %struct.tty*, %struct.tty** %9, align 8
  %68 = getelementptr inbounds %struct.tty, %struct.tty* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load i8*, i8** %7, align 8
  %71 = bitcast i8* %70 to i32*
  store i32 %69, i32* %71, align 4
  br label %143

72:                                               ; preds = %31
  %73 = load %struct.tty*, %struct.tty** %9, align 8
  %74 = getelementptr inbounds %struct.tty, %struct.tty* %73, i32 0, i32 0
  %75 = call i32 @unlock(i32* %74)
  %76 = call i32 @lock(i32* @pids_lock)
  %77 = load %struct.tty*, %struct.tty** %9, align 8
  %78 = getelementptr inbounds %struct.tty, %struct.tty* %77, i32 0, i32 0
  %79 = call i32 @lock(i32* %78)
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %10, align 4
  %85 = call i32 @unlock(i32* @pids_lock)
  %86 = load %struct.tty*, %struct.tty** %9, align 8
  %87 = call i32 @tty_is_current(%struct.tty* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %72
  %90 = load i32, i32* %10, align 4
  %91 = load %struct.tty*, %struct.tty** %9, align 8
  %92 = getelementptr inbounds %struct.tty, %struct.tty* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %90, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %89, %72
  %96 = load i32, i32* @_ENOTTY, align 4
  store i32 %96, i32* %8, align 4
  br label %143

97:                                               ; preds = %89
  %98 = load i8*, i8** %7, align 8
  %99 = bitcast i8* %98 to i32*
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.tty*, %struct.tty** %9, align 8
  %102 = getelementptr inbounds %struct.tty, %struct.tty* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 4
  %103 = load %struct.tty*, %struct.tty** %9, align 8
  %104 = getelementptr inbounds %struct.tty, %struct.tty* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @STRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  br label %143

107:                                              ; preds = %31
  %108 = load %struct.tty*, %struct.tty** %9, align 8
  %109 = getelementptr inbounds %struct.tty, %struct.tty* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i8*, i8** %7, align 8
  %112 = bitcast i8* %111 to i32*
  store i32 %110, i32* %112, align 4
  br label %143

113:                                              ; preds = %31
  %114 = load %struct.tty*, %struct.tty** %9, align 8
  %115 = load i32, i32* %6, align 4
  %116 = load i8*, i8** %7, align 8
  %117 = call i32 @tty_mode_ioctl(%struct.tty* %114, i32 %115, i8* %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @_ENOTTY, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %142

121:                                              ; preds = %113
  %122 = load %struct.tty*, %struct.tty** %9, align 8
  %123 = getelementptr inbounds %struct.tty, %struct.tty* %122, i32 0, i32 1
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32 (%struct.tty*, i32, i8*)*, i32 (%struct.tty*, i32, i8*)** %127, align 8
  %129 = icmp ne i32 (%struct.tty*, i32, i8*)* %128, null
  br i1 %129, label %130, label %142

130:                                              ; preds = %121
  %131 = load %struct.tty*, %struct.tty** %9, align 8
  %132 = getelementptr inbounds %struct.tty, %struct.tty* %131, i32 0, i32 1
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32 (%struct.tty*, i32, i8*)*, i32 (%struct.tty*, i32, i8*)** %136, align 8
  %138 = load %struct.tty*, %struct.tty** %9, align 8
  %139 = load i32, i32* %6, align 4
  %140 = load i8*, i8** %7, align 8
  %141 = call i32 %137(%struct.tty* %138, i32 %139, i8* %140)
  store i32 %141, i32* %8, align 4
  br label %142

142:                                              ; preds = %130, %121, %113
  br label %143

143:                                              ; preds = %142, %107, %97, %95, %62, %60, %46, %45
  %144 = load %struct.tty*, %struct.tty** %9, align 8
  %145 = getelementptr inbounds %struct.tty, %struct.tty* %144, i32 0, i32 0
  %146 = call i32 @unlock(i32* %145)
  %147 = load i32, i32* %8, align 4
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %143, %29, %27
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i32 @lock(i32*) #1

declare dso_local i32 @unlock(i32*) #1

declare dso_local i32 @notify(i32*) #1

declare dso_local i32 @tiocsctty(%struct.tty*, i32) #1

declare dso_local i32 @tty_is_current(%struct.tty*) #1

declare dso_local i32 @STRACE(i8*, i32) #1

declare dso_local i32 @tty_mode_ioctl(%struct.tty*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
