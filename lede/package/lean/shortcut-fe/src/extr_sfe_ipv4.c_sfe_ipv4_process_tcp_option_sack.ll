; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv4.c_sfe_ipv4_process_tcp_option_sack.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv4.c_sfe_ipv4_process_tcp_option_sack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfe_ipv4_tcp_hdr = type { i32 }

@TCPOLEN_TIMESTAMP = common dso_local global i32 0, align 4
@TCPOPT_NOP = common dso_local global i64 0, align 8
@TCPOPT_TIMESTAMP = common dso_local global i64 0, align 8
@TCPOPT_SACK = common dso_local global i64 0, align 8
@TCPOLEN_SACK_PERBLOCK = common dso_local global i32 0, align 4
@TCPOPT_EOL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfe_ipv4_tcp_hdr*, i32, i32*)* @sfe_ipv4_process_tcp_option_sack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfe_ipv4_process_tcp_option_sack(%struct.sfe_ipv4_tcp_hdr* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sfe_ipv4_tcp_hdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  store %struct.sfe_ipv4_tcp_hdr* %0, %struct.sfe_ipv4_tcp_hdr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 4, i32* %8, align 4
  %16 = load %struct.sfe_ipv4_tcp_hdr*, %struct.sfe_ipv4_tcp_hdr** %5, align 8
  %17 = bitcast %struct.sfe_ipv4_tcp_hdr* %16 to i64*
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  store i64* %20, i64** %9, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @TCPOLEN_TIMESTAMP, align 4
  %24 = add nsw i32 %22, %23
  %25 = add nsw i32 %24, 1
  %26 = add nsw i32 %25, 1
  %27 = icmp eq i32 %21, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @likely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %69

31:                                               ; preds = %3
  %32 = load i64*, i64** %9, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TCPOPT_NOP, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @likely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %69

40:                                               ; preds = %31
  %41 = load i64*, i64** %9, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @TCPOPT_NOP, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i64 @likely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %40
  %50 = load i64*, i64** %9, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @TCPOPT_TIMESTAMP, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i64 @likely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %49
  %59 = load i64*, i64** %9, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 3
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @TCPOLEN_TIMESTAMP, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp eq i64 %61, %63
  %65 = zext i1 %64 to i32
  %66 = call i64 @likely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  store i32 1, i32* %4, align 4
  br label %189

69:                                               ; preds = %58, %49, %40, %31, %3
  br label %70

70:                                               ; preds = %182, %164, %85, %69
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %188

74:                                               ; preds = %70
  %75 = load %struct.sfe_ipv4_tcp_hdr*, %struct.sfe_ipv4_tcp_hdr** %5, align 8
  %76 = bitcast %struct.sfe_ipv4_tcp_hdr* %75 to i64*
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  store i64* %79, i64** %9, align 8
  %80 = load i64*, i64** %9, align 8
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %11, align 8
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* @TCPOPT_NOP, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %74
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %70

88:                                               ; preds = %74
  %89 = load i64, i64* %11, align 8
  %90 = load i64, i64* @TCPOPT_SACK, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %170

92:                                               ; preds = %88
  store i32 0, i32* %12, align 4
  store i64 2, i64* %13, align 8
  %93 = load i64*, i64** %9, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 1
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %10, align 8
  %96 = load i64, i64* %10, align 8
  %97 = load i32, i32* @TCPOLEN_SACK_PERBLOCK, align 4
  %98 = add nsw i32 2, %97
  %99 = sext i32 %98 to i64
  %100 = icmp slt i64 %96, %99
  br i1 %100, label %115, label %101

101:                                              ; preds = %92
  %102 = load i64, i64* %10, align 8
  %103 = sub nsw i64 %102, 2
  %104 = load i32, i32* @TCPOLEN_SACK_PERBLOCK, align 4
  %105 = sext i32 %104 to i64
  %106 = srem i64 %103, %105
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %101
  %109 = load i64, i64* %10, align 8
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %8, align 4
  %112 = sub nsw i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = icmp sgt i64 %109, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %108, %101, %92
  store i32 0, i32* %4, align 4
  br label %189

116:                                              ; preds = %108
  %117 = load i64, i64* %13, align 8
  %118 = add nsw i64 %117, 4
  store i64 %118, i64* %13, align 8
  br label %119

119:                                              ; preds = %151, %116
  %120 = load i64, i64* %13, align 8
  %121 = load i64, i64* %10, align 8
  %122 = icmp slt i64 %120, %121
  br i1 %122, label %123, label %156

123:                                              ; preds = %119
  %124 = load i64*, i64** %9, align 8
  %125 = load i64, i64* %13, align 8
  %126 = getelementptr inbounds i64, i64* %124, i64 %125
  store i64* %126, i64** %15, align 8
  %127 = load i64*, i64** %15, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 0
  %129 = load i64, i64* %128, align 8
  %130 = shl i64 %129, 24
  %131 = load i64*, i64** %15, align 8
  %132 = getelementptr inbounds i64, i64* %131, i64 1
  %133 = load i64, i64* %132, align 8
  %134 = shl i64 %133, 16
  %135 = or i64 %130, %134
  %136 = load i64*, i64** %15, align 8
  %137 = getelementptr inbounds i64, i64* %136, i64 2
  %138 = load i64, i64* %137, align 8
  %139 = shl i64 %138, 8
  %140 = or i64 %135, %139
  %141 = load i64*, i64** %15, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 3
  %143 = load i64, i64* %142, align 8
  %144 = or i64 %140, %143
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %14, align 4
  %146 = load i32, i32* %14, align 4
  %147 = load i32, i32* %12, align 4
  %148 = icmp sgt i32 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %123
  %150 = load i32, i32* %14, align 4
  store i32 %150, i32* %12, align 4
  br label %151

151:                                              ; preds = %149, %123
  %152 = load i32, i32* @TCPOLEN_SACK_PERBLOCK, align 4
  %153 = sext i32 %152 to i64
  %154 = load i64, i64* %13, align 8
  %155 = add nsw i64 %154, %153
  store i64 %155, i64* %13, align 8
  br label %119

156:                                              ; preds = %119
  %157 = load i32, i32* %12, align 4
  %158 = load i32*, i32** %7, align 8
  %159 = load i32, i32* %158, align 4
  %160 = icmp sgt i32 %157, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load i32, i32* %12, align 4
  %163 = load i32*, i32** %7, align 8
  store i32 %162, i32* %163, align 4
  br label %164

164:                                              ; preds = %161, %156
  %165 = load i64, i64* %10, align 8
  %166 = load i32, i32* %8, align 4
  %167 = sext i32 %166 to i64
  %168 = add nsw i64 %167, %165
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %8, align 4
  br label %70

170:                                              ; preds = %88
  %171 = load i64, i64* %11, align 8
  %172 = load i64, i64* @TCPOPT_EOL, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %170
  store i32 1, i32* %4, align 4
  br label %189

175:                                              ; preds = %170
  %176 = load i64*, i64** %9, align 8
  %177 = getelementptr inbounds i64, i64* %176, i64 1
  %178 = load i64, i64* %177, align 8
  store i64 %178, i64* %10, align 8
  %179 = load i64, i64* %10, align 8
  %180 = icmp slt i64 %179, 2
  br i1 %180, label %181, label %182

181:                                              ; preds = %175
  store i32 0, i32* %4, align 4
  br label %189

182:                                              ; preds = %175
  %183 = load i64, i64* %10, align 8
  %184 = load i32, i32* %8, align 4
  %185 = sext i32 %184 to i64
  %186 = add nsw i64 %185, %183
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %8, align 4
  br label %70

188:                                              ; preds = %70
  store i32 1, i32* %4, align 4
  br label %189

189:                                              ; preds = %188, %181, %174, %115, %68
  %190 = load i32, i32* %4, align 4
  ret i32 %190
}

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
