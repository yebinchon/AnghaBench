; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_find_target_ipv6.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_find_target_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn_target = type { i32, %struct.TYPE_2__, i32*, i64 }
%struct.TYPE_2__ = type { i32 }

@PRIME_TARGETS = common dso_local global i64 0, align 8
@HTarget = common dso_local global %struct.conn_target** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.conn_target** @find_target_ipv6(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.conn_target**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to i64*
  %18 = getelementptr inbounds i64, i64* %17, i64 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %15, %3
  %22 = phi i1 [ true, %3 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32*, i32** %7, align 8
  %26 = ptrtoint i32* %25 to i64
  %27 = mul i64 %26, 180013754
  %28 = load i64, i64* @PRIME_TARGETS, align 8
  %29 = urem i64 %27, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = ptrtoint i32* %31 to i64
  %33 = mul i64 %32, 229354667
  %34 = load i64, i64* @PRIME_TARGETS, align 8
  %35 = sub i64 %34, 1
  %36 = urem i64 %33, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %71, %21
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 4
  br i1 %40, label %41, label %74

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = zext i32 %42 to i64
  %44 = mul i64 %43, 17239
  %45 = load i8*, i8** %5, align 8
  %46 = bitcast i8* %45 to i32*
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = zext i32 %50 to i64
  %52 = add i64 %44, %51
  %53 = load i64, i64* @PRIME_TARGETS, align 8
  %54 = urem i64 %52, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = zext i32 %56 to i64
  %58 = mul i64 %57, 23917
  %59 = load i8*, i8** %5, align 8
  %60 = bitcast i8* %59 to i32*
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = zext i32 %64 to i64
  %66 = add i64 %58, %65
  %67 = load i64, i64* @PRIME_TARGETS, align 8
  %68 = sub i64 %67, 1
  %69 = urem i64 %66, %68
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %41
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %38

74:                                               ; preds = %38
  %75 = load i32, i32* %8, align 4
  %76 = mul i32 %75, 239
  %77 = load i32, i32* %6, align 4
  %78 = add i32 %76, %77
  %79 = zext i32 %78 to i64
  %80 = load i64, i64* @PRIME_TARGETS, align 8
  %81 = urem i64 %79, %80
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %9, align 4
  %84 = mul i32 %83, 17
  %85 = load i32, i32* %6, align 4
  %86 = add i32 %84, %85
  %87 = zext i32 %86 to i64
  %88 = load i64, i64* @PRIME_TARGETS, align 8
  %89 = sub i64 %88, 1
  %90 = urem i64 %87, %89
  %91 = add i64 %90, 1
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %178, %74
  %94 = load %struct.conn_target**, %struct.conn_target*** @HTarget, align 8
  %95 = load i32, i32* %8, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.conn_target*, %struct.conn_target** %94, i64 %96
  %98 = load %struct.conn_target*, %struct.conn_target** %97, align 8
  %99 = icmp ne %struct.conn_target* %98, null
  br i1 %99, label %100, label %179

100:                                              ; preds = %93
  %101 = load %struct.conn_target**, %struct.conn_target*** @HTarget, align 8
  %102 = load i32, i32* %8, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.conn_target*, %struct.conn_target** %101, i64 %103
  %105 = load %struct.conn_target*, %struct.conn_target** %104, align 8
  %106 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = inttoptr i64 %107 to i64*
  %109 = getelementptr inbounds i64, i64* %108, i64 1
  %110 = load i64, i64* %109, align 8
  %111 = load i8*, i8** %5, align 8
  %112 = bitcast i8* %111 to i64*
  %113 = getelementptr inbounds i64, i64* %112, i64 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %110, %114
  br i1 %115, label %116, label %165

116:                                              ; preds = %100
  %117 = load %struct.conn_target**, %struct.conn_target*** @HTarget, align 8
  %118 = load i32, i32* %8, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.conn_target*, %struct.conn_target** %117, i64 %119
  %121 = load %struct.conn_target*, %struct.conn_target** %120, align 8
  %122 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = inttoptr i64 %123 to i64*
  %125 = load i64, i64* %124, align 8
  %126 = load i8*, i8** %5, align 8
  %127 = bitcast i8* %126 to i64*
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %125, %128
  br i1 %129, label %130, label %165

130:                                              ; preds = %116
  %131 = load %struct.conn_target**, %struct.conn_target*** @HTarget, align 8
  %132 = load i32, i32* %8, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.conn_target*, %struct.conn_target** %131, i64 %133
  %135 = load %struct.conn_target*, %struct.conn_target** %134, align 8
  %136 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %165

140:                                              ; preds = %130
  %141 = load %struct.conn_target**, %struct.conn_target*** @HTarget, align 8
  %142 = load i32, i32* %8, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds %struct.conn_target*, %struct.conn_target** %141, i64 %143
  %145 = load %struct.conn_target*, %struct.conn_target** %144, align 8
  %146 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = load i32*, i32** %7, align 8
  %149 = icmp eq i32* %147, %148
  br i1 %149, label %150, label %165

150:                                              ; preds = %140
  %151 = load %struct.conn_target**, %struct.conn_target*** @HTarget, align 8
  %152 = load i32, i32* %8, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.conn_target*, %struct.conn_target** %151, i64 %153
  %155 = load %struct.conn_target*, %struct.conn_target** %154, align 8
  %156 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %165, label %160

160:                                              ; preds = %150
  %161 = load %struct.conn_target**, %struct.conn_target*** @HTarget, align 8
  %162 = load i32, i32* %8, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.conn_target*, %struct.conn_target** %161, i64 %163
  store %struct.conn_target** %164, %struct.conn_target*** %4, align 8
  br label %184

165:                                              ; preds = %150, %140, %130, %116, %100
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* %8, align 4
  %168 = add i32 %167, %166
  store i32 %168, i32* %8, align 4
  %169 = zext i32 %168 to i64
  %170 = load i64, i64* @PRIME_TARGETS, align 8
  %171 = icmp uge i64 %169, %170
  br i1 %171, label %172, label %178

172:                                              ; preds = %165
  %173 = load i64, i64* @PRIME_TARGETS, align 8
  %174 = load i32, i32* %8, align 4
  %175 = zext i32 %174 to i64
  %176 = sub i64 %175, %173
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %8, align 4
  br label %178

178:                                              ; preds = %172, %165
  br label %93

179:                                              ; preds = %93
  %180 = load %struct.conn_target**, %struct.conn_target*** @HTarget, align 8
  %181 = load i32, i32* %8, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.conn_target*, %struct.conn_target** %180, i64 %182
  store %struct.conn_target** %183, %struct.conn_target*** %4, align 8
  br label %184

184:                                              ; preds = %179, %160
  %185 = load %struct.conn_target**, %struct.conn_target*** %4, align 8
  ret %struct.conn_target** %185
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
