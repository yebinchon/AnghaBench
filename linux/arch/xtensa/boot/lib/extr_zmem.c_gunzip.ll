; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/boot/lib/extr_zmem.c_gunzip.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/boot/lib/extr_zmem.c_gunzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i8*, i32, i32 }

@DEFLATED = common dso_local global i8 0, align 1
@RESERVED = common dso_local global i32 0, align 4
@EXTRA_FIELD = common dso_local global i32 0, align 4
@ORIG_NAME = common dso_local global i32 0, align 4
@COMMENT = common dso_local global i32 0, align 4
@HEAD_CRC = common dso_local global i32 0, align 4
@MAX_WBITS = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@Z_FINISH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gunzip(i8* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 10, i32* %11, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 3
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  store i32 %16, i32* %12, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 2
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @DEFLATED, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @RESERVED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24, %4
  %30 = call i32 (...) @exit() #3
  unreachable

31:                                               ; preds = %24
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @EXTRA_FIELD, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %31
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 10
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = add nsw i32 12, %40
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 11
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = shl i32 %45, 8
  %47 = add nsw i32 %41, %46
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %36, %31
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @ORIG_NAME, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %63, %53
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %55, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %54

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64, %48
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @COMMENT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %65
  br label %71

71:                                               ; preds = %80, %70
  %72 = load i8*, i8** %7, align 8
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  br label %71

81:                                               ; preds = %71
  br label %82

82:                                               ; preds = %81, %65
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* @HEAD_CRC, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 2
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %87, %82
  %91 = load i32, i32* %11, align 4
  %92 = load i32*, i32** %8, align 8
  %93 = load i32, i32* %92, align 4
  %94 = icmp sge i32 %91, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = call i32 (...) @exit() #3
  unreachable

97:                                               ; preds = %90
  %98 = call i32 (...) @zlib_inflate_workspacesize()
  %99 = call i32 @zalloc(i32 %98)
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 4
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* @MAX_WBITS, align 4
  %102 = sub nsw i32 0, %101
  %103 = call i32 @zlib_inflateInit2(%struct.TYPE_5__* %9, i32 %102)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* @Z_OK, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %97
  %108 = call i32 (...) @exit() #3
  unreachable

109:                                              ; preds = %97
  %110 = load i8*, i8** %7, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store i8* %113, i8** %114, align 8
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %11, align 4
  %118 = sub nsw i32 %116, %117
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  store i32 %118, i32* %119, align 8
  %120 = load i8*, i8** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  store i8* %120, i8** %121, align 8
  %122 = load i32, i32* %6, align 4
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 3
  store i32 %122, i32* %123, align 8
  %124 = load i32, i32* @Z_FINISH, align 4
  %125 = call i32 @zlib_inflate(%struct.TYPE_5__* %9, i32 %124)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* @Z_OK, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %109
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* @Z_STREAM_END, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = call i32 (...) @exit() #3
  unreachable

135:                                              ; preds = %129, %109
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %137 = load i8*, i8** %136, align 8
  %138 = load i8*, i8** %5, align 8
  %139 = ptrtoint i8* %137 to i64
  %140 = ptrtoint i8* %138 to i64
  %141 = sub i64 %139, %140
  %142 = trunc i64 %141 to i32
  %143 = load i32*, i32** %8, align 8
  store i32 %142, i32* %143, align 4
  %144 = call i32 @zlib_inflateEnd(%struct.TYPE_5__* %9)
  ret void
}

; Function Attrs: noreturn
declare dso_local i32 @exit(...) #1

declare dso_local i32 @zalloc(i32) #2

declare dso_local i32 @zlib_inflate_workspacesize(...) #2

declare dso_local i32 @zlib_inflateInit2(%struct.TYPE_5__*, i32) #2

declare dso_local i32 @zlib_inflate(%struct.TYPE_5__*, i32) #2

declare dso_local i32 @zlib_inflateEnd(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
