; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_tty.c_tty_write.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_tty.c_tty_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32, %struct.tty* }
%struct.tty = type { %struct.TYPE_6__*, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.tty*, i8*, i64, i32)* }
%struct.TYPE_4__ = type { i32 }

@_EIO = common dso_local global i32 0, align 4
@O_NONBLOCK_ = common dso_local global i32 0, align 4
@OPOST_ = common dso_local global i32 0, align 4
@ONLRET_ = common dso_local global i32 0, align 4
@OCRNL_ = common dso_local global i32 0, align 4
@ONLCR_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fd*, i8*, i64)* @tty_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty_write(%struct.fd* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tty*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8, align 1
  store %struct.fd* %0, %struct.fd** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load %struct.fd*, %struct.fd** %5, align 8
  %18 = getelementptr inbounds %struct.fd, %struct.fd* %17, i32 0, i32 1
  %19 = load %struct.tty*, %struct.tty** %18, align 8
  store %struct.tty* %19, %struct.tty** %8, align 8
  %20 = load %struct.tty*, %struct.tty** %8, align 8
  %21 = getelementptr inbounds %struct.tty, %struct.tty* %20, i32 0, i32 1
  %22 = call i32 @lock(i32* %21)
  %23 = load %struct.tty*, %struct.tty** %8, align 8
  %24 = getelementptr inbounds %struct.tty, %struct.tty* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load %struct.tty*, %struct.tty** %8, align 8
  %29 = getelementptr inbounds %struct.tty, %struct.tty* %28, i32 0, i32 1
  %30 = call i32 @unlock(i32* %29)
  %31 = load i32, i32* @_EIO, align 4
  store i32 %31, i32* %4, align 4
  br label %139

32:                                               ; preds = %3
  %33 = load %struct.fd*, %struct.fd** %5, align 8
  %34 = getelementptr inbounds %struct.fd, %struct.fd* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @O_NONBLOCK_, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %9, align 4
  %41 = load %struct.tty*, %struct.tty** %8, align 8
  %42 = getelementptr inbounds %struct.tty, %struct.tty* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %10, align 4
  %45 = load %struct.tty*, %struct.tty** %8, align 8
  %46 = getelementptr inbounds %struct.tty, %struct.tty* %45, i32 0, i32 1
  %47 = call i32 @unlock(i32* %46)
  store i32 0, i32* %11, align 4
  store i8* null, i8** %12, align 8
  %48 = load i64, i64* %7, align 8
  store i64 %48, i64* %13, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @OPOST_, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %113

53:                                               ; preds = %32
  %54 = load i64, i64* %7, align 8
  %55 = mul i64 %54, 2
  %56 = call i8* @malloc(i64 %55)
  store i8* %56, i8** %12, align 8
  store i64 0, i64* %13, align 8
  %57 = load i8*, i8** %6, align 8
  store i8* %57, i8** %14, align 8
  store i64 0, i64* %15, align 8
  br label %58

58:                                               ; preds = %108, %53
  %59 = load i64, i64* %15, align 8
  %60 = load i64, i64* %7, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %111

62:                                               ; preds = %58
  %63 = load i8*, i8** %14, align 8
  %64 = load i64, i64* %15, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = load i8, i8* %65, align 1
  store i8 %66, i8* %16, align 1
  %67 = load i8, i8* %16, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 13
  br i1 %69, label %70, label %76

70:                                               ; preds = %62
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @ONLRET_, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %108

76:                                               ; preds = %70, %62
  %77 = load i8, i8* %16, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 13
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @OCRNL_, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i8 10, i8* %16, align 1
  br label %101

86:                                               ; preds = %80, %76
  %87 = load i8, i8* %16, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 10
  br i1 %89, label %90, label %100

90:                                               ; preds = %86
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @ONLCR_, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load i8*, i8** %12, align 8
  %97 = load i64, i64* %13, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %13, align 8
  %99 = getelementptr inbounds i8, i8* %96, i64 %97
  store i8 13, i8* %99, align 1
  br label %100

100:                                              ; preds = %95, %90, %86
  br label %101

101:                                              ; preds = %100, %85
  br label %102

102:                                              ; preds = %101
  %103 = load i8, i8* %16, align 1
  %104 = load i8*, i8** %12, align 8
  %105 = load i64, i64* %13, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %13, align 8
  %107 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8 %103, i8* %107, align 1
  br label %108

108:                                              ; preds = %102, %75
  %109 = load i64, i64* %15, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %15, align 8
  br label %58

111:                                              ; preds = %58
  %112 = load i8*, i8** %12, align 8
  store i8* %112, i8** %6, align 8
  br label %113

113:                                              ; preds = %111, %32
  %114 = load %struct.tty*, %struct.tty** %8, align 8
  %115 = getelementptr inbounds %struct.tty, %struct.tty* %114, i32 0, i32 0
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32 (%struct.tty*, i8*, i64, i32)*, i32 (%struct.tty*, i8*, i64, i32)** %119, align 8
  %121 = load %struct.tty*, %struct.tty** %8, align 8
  %122 = load i8*, i8** %6, align 8
  %123 = load i64, i64* %13, align 8
  %124 = load i32, i32* %9, align 4
  %125 = call i32 %120(%struct.tty* %121, i8* %122, i64 %123, i32 %124)
  store i32 %125, i32* %11, align 4
  %126 = load i8*, i8** %12, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %113
  %129 = load i8*, i8** %12, align 8
  %130 = call i32 @free(i8* %129)
  br label %131

131:                                              ; preds = %128, %113
  %132 = load i32, i32* %11, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = load i32, i32* %11, align 4
  store i32 %135, i32* %4, align 4
  br label %139

136:                                              ; preds = %131
  %137 = load i64, i64* %7, align 8
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %136, %134, %27
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @lock(i32*) #1

declare dso_local i32 @unlock(i32*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
