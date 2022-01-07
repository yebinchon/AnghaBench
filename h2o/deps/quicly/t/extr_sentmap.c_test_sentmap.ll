; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/t/extr_sentmap.c_test_sentmap.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/t/extr_sentmap.c_test_sentmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i32 }

@on_acked = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i64 0, align 8
@QUICLY_SENTMAP_EVENT_EXPIRED = common dso_local global i32 0, align 4
@on_acked_callcnt = common dso_local global i32 0, align 4
@on_acked_ackcnt = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_sentmap() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64, align 8
  %8 = call i32 @quicly_sentmap_init(i32* %1)
  store i32 0, i32* %2, align 4
  br label %9

9:                                                ; preds = %34, %0
  %10 = load i32, i32* %2, align 4
  %11 = icmp slt i32 %10, 10
  br i1 %11, label %12, label %37

12:                                               ; preds = %9
  store i64 1, i64* %3, align 8
  br label %13

13:                                               ; preds = %30, %12
  %14 = load i64, i64* %3, align 8
  %15 = icmp ule i64 %14, 5
  br i1 %15, label %16, label %33

16:                                               ; preds = %13
  %17 = load i32, i32* %2, align 4
  %18 = mul nsw i32 %17, 5
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %19, %20
  %22 = trunc i64 %21 to i32
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @quicly_sentmap_prepare(i32* %1, i32 %22, i32 %23, i32 0)
  %25 = load i32, i32* @on_acked, align 4
  %26 = call i32 @quicly_sentmap_allocate(i32* %1, i32 %25)
  %27 = load i32, i32* @on_acked, align 4
  %28 = call i32 @quicly_sentmap_allocate(i32* %1, i32 %27)
  %29 = call i32 @quicly_sentmap_commit(i32* %1, i32 1)
  br label %30

30:                                               ; preds = %16
  %31 = load i64, i64* %3, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %3, align 8
  br label %13

33:                                               ; preds = %13
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %2, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %2, align 4
  br label %9

37:                                               ; preds = %9
  %38 = call i32 @quicly_sentmap_init_iter(i32* %1, i32* %4)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %84, %37
  %40 = load i32, i32* %2, align 4
  %41 = icmp slt i32 %40, 10
  br i1 %41, label %42, label %87

42:                                               ; preds = %39
  store i64 1, i64* %3, align 8
  br label %43

43:                                               ; preds = %80, %42
  %44 = load i64, i64* %3, align 8
  %45 = icmp ule i64 %44, 5
  br i1 %45, label %46, label %83

46:                                               ; preds = %43
  %47 = call %struct.TYPE_3__* @quicly_sentmap_get(i32* %4)
  store %struct.TYPE_3__* %47, %struct.TYPE_3__** %6, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = load i32, i32* %2, align 4
  %53 = mul nsw i32 %52, 5
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %3, align 8
  %56 = add i64 %54, %55
  %57 = icmp eq i64 %51, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @ok(i32 %58)
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %2, align 4
  %64 = icmp eq i32 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @ok(i32 %65)
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @ok(i32 %71)
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 1
  %77 = zext i1 %76 to i32
  %78 = call i32 @ok(i32 %77)
  %79 = call i32 @quicly_sentmap_skip(i32* %4)
  br label %80

80:                                               ; preds = %46
  %81 = load i64, i64* %3, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %3, align 8
  br label %43

83:                                               ; preds = %43
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %2, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %2, align 4
  br label %39

87:                                               ; preds = %39
  %88 = call %struct.TYPE_3__* @quicly_sentmap_get(i32* %4)
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* @UINT64_MAX, align 8
  %93 = icmp eq i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @ok(i32 %94)
  %96 = call i32 @num_blocks(i32* %1)
  %97 = icmp eq i32 %96, 10
  %98 = zext i1 %97 to i32
  %99 = call i32 @ok(i32 %98)
  %100 = call i32 @quicly_sentmap_init_iter(i32* %1, i32* %4)
  br label %101

101:                                              ; preds = %106, %87
  %102 = call %struct.TYPE_3__* @quicly_sentmap_get(i32* %4)
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp sle i32 %104, 10
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = call i32 @quicly_sentmap_skip(i32* %4)
  br label %101

108:                                              ; preds = %101
  %109 = call %struct.TYPE_3__* @quicly_sentmap_get(i32* %4)
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 11
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  br label %115

115:                                              ; preds = %120, %108
  %116 = call %struct.TYPE_3__* @quicly_sentmap_get(i32* %4)
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp sle i32 %118, 40
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load i32, i32* @QUICLY_SENTMAP_EVENT_EXPIRED, align 4
  %122 = call i32 @quicly_sentmap_update(i32* %1, i32* %4, i32 %121, i32* null)
  br label %115

123:                                              ; preds = %115
  %124 = load i32, i32* @on_acked_callcnt, align 4
  %125 = icmp eq i32 %124, 120
  %126 = zext i1 %125 to i32
  %127 = call i32 @ok(i32 %126)
  %128 = load i64, i64* @on_acked_ackcnt, align 8
  %129 = icmp eq i64 %128, 0
  %130 = zext i1 %129 to i32
  %131 = call i32 @ok(i32 %130)
  store i64 0, i64* %7, align 8
  %132 = call i32 @quicly_sentmap_init_iter(i32* %1, i32* %4)
  br label %133

133:                                              ; preds = %162, %123
  %134 = call %struct.TYPE_3__* @quicly_sentmap_get(i32* %4)
  store %struct.TYPE_3__* %134, %struct.TYPE_3__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = load i64, i64* @UINT64_MAX, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %164

140:                                              ; preds = %133
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  %145 = zext i1 %144 to i32
  %146 = call i32 @ok(i32 %145)
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp sle i32 %149, 10
  br i1 %150, label %156, label %151

151:                                              ; preds = %140
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp slt i32 40, %154
  br label %156

156:                                              ; preds = %151, %140
  %157 = phi i1 [ true, %140 ], [ %155, %151 ]
  %158 = zext i1 %157 to i32
  %159 = call i32 @ok(i32 %158)
  %160 = load i64, i64* %7, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %7, align 8
  br label %162

162:                                              ; preds = %156
  %163 = call i32 @quicly_sentmap_skip(i32* %4)
  br label %133

164:                                              ; preds = %133
  %165 = load i64, i64* %7, align 8
  %166 = icmp eq i64 %165, 20
  %167 = zext i1 %166 to i32
  %168 = call i32 @ok(i32 %167)
  %169 = call i32 @num_blocks(i32* %1)
  %170 = icmp eq i32 %169, 5
  %171 = zext i1 %170 to i32
  %172 = call i32 @ok(i32 %171)
  %173 = call i32 @quicly_sentmap_dispose(i32* %1)
  ret void
}

declare dso_local i32 @quicly_sentmap_init(i32*) #1

declare dso_local i32 @quicly_sentmap_prepare(i32*, i32, i32, i32) #1

declare dso_local i32 @quicly_sentmap_allocate(i32*, i32) #1

declare dso_local i32 @quicly_sentmap_commit(i32*, i32) #1

declare dso_local i32 @quicly_sentmap_init_iter(i32*, i32*) #1

declare dso_local %struct.TYPE_3__* @quicly_sentmap_get(i32*) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @quicly_sentmap_skip(i32*) #1

declare dso_local i32 @num_blocks(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @quicly_sentmap_update(i32*, i32*, i32, i32*) #1

declare dso_local i32 @quicly_sentmap_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
